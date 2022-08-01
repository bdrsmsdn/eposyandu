<?php
		
class History{
		private $conn;
		private $table_nama = "ref_imunisasi";

		public $id_anak;
		public $startPage;
        public $dataPerPage;

		public function __construct($db){
			$this->conn = $db;
		}
		public function readHistory(){
			$query = "SELECT $this->table_nama.tgl_imunisasi, ref_vaksin.nama_vaksin FROM $this->table_nama LEFT JOIN ref_vaksin ON $this->table_nama.id_vaksin = ref_vaksin.id_vaksin WHERE id_anak= '$this->id_anak'";

			$stmt = $this->conn->prepare($query);
			$stmt->execute();

			return $stmt;
        }
        
	}
?>