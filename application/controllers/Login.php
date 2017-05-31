<?php

class Login extends CI_Controller {
	
	function index()
	{
		if(isset($this->session->is_logged_in)){
			redirect('zalogowany/panel');
		}
		$this->load->view('header');
		$this->load->view('login_form');
		$this->load->view('footer');
	}
	
	function validate_credentials()
	{
		$this->load->model('membership_model');
		$query = $this->membership_model->validate();
		
		if($query) // Logowanie poprawne
		{
			$data = array(
				'username' => $this->input->post('username'),
				'is_logged_in' => true
			);
			$this->session->set_userdata($data);
			redirect('zalogowany/panel');
			
			
		}
		else //Logowanie niepoprawne
		{
			$this->index();
			echo 'Login lub hasło niepoprawne';
		}
	}
	
	function signup() //Kontroler dodawania nowego użytkownika.
	{
		$this->load->view('header');
		$this->load->view('signup_form');
		$this->load->view('footer');
	}
	
	function create_member() //Kontroler tworzenia użytkownika
	{	//ładowanie biblioteki walidacji formularzy i przeprowadzenie jej z poniższymi zadasami
		$this->load->library('form_validation');
		//zasady walidacji
		$this->form_validation->set_rules('first_name', 'Imię', 'trim|required|min_length[3]|max_length[15]');
		$this->form_validation->set_rules('last_name', 'Nazwisko', 'trim|required|min_length[3]|max_length[15]');
		$this->form_validation->set_rules('email', 'Adres email', 'trim|required|valid_email|max_length[32]|callback_check_if_email_exists');
		$this->form_validation->set_rules('username', 'Nazwa użytkownika', 'trim|required|min_length[4]|max_length[15]|callback_check_if_username_exists');
		$this->form_validation->set_rules('password', 'Hasło', 'trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('password_confirm', 'Potwierdzenie hasła', 'trim|required|matches[password]');
		
		if ($this->form_validation->run() == FALSE) //walidacja spierdolona
		{
			$this->load->view('header');
			$this->load->view('signup_form');
			$this->load->view('footer');
		}
		else
		{
			//Ładujemy model membership i wywołujemy jego metodę create_member
			$this->load->model('membership_model');
			if ($query = $this->membership_model->create_member())
			{
				$data['account_created'] = 'Twoje konto zostało utworzone.';
				
				$this->load->view('header');
				$this->load->view('login_form', $data);
				$this->load->view('footer');
			}
			else {
				$this->load->view('header');
				$this->load->view('signup_form');
				$this->load->view('footer');
			}
		}
	}
	
	//funkcja sprawdzająca czy nie istnieje już użytkownik o takiej samej nazwie
	function check_if_username_exists($requested_username) {
		$this->load->model('membership_model');
		$username_available = $this->membership_model->check_if_username_exists($requested_username);
		if ($username_available) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
	//analogicznie sprawdzenie istnienia konfliktu maili...
	function check_if_email_exists($requested_email) {
		$this->load->model('membership_model');
		$email_available = $this->membership_model->check_if_email_exists($requested_email);
		if ($email_available) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
}
?>