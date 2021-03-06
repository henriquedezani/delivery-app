using System.ComponentModel.DataAnnotations;
using System;

namespace DeliveryApp.Models
{
    public class Empresa
    {
            
        public int Id { get; set; }
        [Required(ErrorMessage = "Campo obrigatório.")]
        public String Nome { get; set; }
        
        [Required(ErrorMessage = "Campo obrigatório.")]
        [MinLength(12, ErrorMessage = "O campo CNPJ deve conter no mínimo 12 caracteres.")]
        public String Cnpj { get; set; }
        public String Telefone { get; set; }

        public int UsuarioId { get; set; }
            
        public virtual Usuario Usuario { get; set; }

        public int EnderecoId { get; set; }
            
        public virtual Endereco Endereco { get; set; }
    
        public Empresa (){
            Usuario = new Usuario();
            Endereco = new Endereco();
        }
    }
}