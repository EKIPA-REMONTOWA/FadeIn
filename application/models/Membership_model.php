<?php
//Inicjujemy model.
class Membership_model extends CI_Model {
	
	function validate() {
		$this->db->where('username', $this->input->post('username'));
		$password_hashed = hash('sha512', $this->input->post('password'));
		$this->db->where('password', $password_hashed);
		$query = $this->db->get('users');
		if($query->num_rows() == 1) {
			return true;
		}
	}
	
	function create_member() {
		//Ładujemy login do zmiennej
		$username = $this->input->post('username');
		//Klasa nowego użytkownika
		$new_member_insert_data = array(
			'first_name' => $this->input->post('first_name'),
			'last_name' => $this->input->post('last_name'),
			'email' => $this->input->post('email'),
			'username' => $this->input->post('username'),
			'password' => hash('sha512',($this->input->post('password')))
		);
		//Wysyłamy do bazy danych!!!
		$insert = $this->db->insert('users', $new_member_insert_data);
		//I zwracamy cośmy dostali, jak to mówią kto daje i zabiera ten się w piekle poniewiera xD
		return $insert;
	}
	//Funkcja z parametrem wysyłanym do kontrolera.
	function check_if_username_exists($username) {
		//Łączymy się z bazą
		$this->db->where('username', $username);
		//i wyjmujemy...
		$result = $this->db->get('users');
		
		//Dodatni wynik konfliktów
		if ($result->num_rows() > 0) {
			return FALSE; //login zajęty
		} else {
		//Zerowy wynik konfliktów
			return TRUE; //login wolny
		}
		
	}
	//i tuteż to samo co dla username'a.
	function check_if_email_exists($email) {
		$this->db->where('email', $email);
		$result = $this->db->get('users');
		
		if ($result->num_rows() > 0) {
			return FALSE; //login zajęty
		} else {
			return TRUE; //login wolny
		}
		
	}
}
?>