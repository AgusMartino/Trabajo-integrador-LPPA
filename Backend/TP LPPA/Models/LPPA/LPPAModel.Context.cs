﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TP_LPPA.Models.LPPA
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LPPAEntities : DbContext
    {
        public LPPAEntities()
            : base("name=LPPAEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Permiso> Permiso { get; set; }
        public virtual DbSet<Pregunta_seguridad> Pregunta_seguridad { get; set; }
        public virtual DbSet<Token> Token { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }
        public virtual DbSet<Usuario_Permiso> Usuario_Permiso { get; set; }
    }
}
