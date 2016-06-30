﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace censa
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class bioEntities : DbContext
    {
        public bioEntities()
            : base("name=bioEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ACGroup> ACGroup { get; set; }
        public virtual DbSet<ACTimeZones> ACTimeZones { get; set; }
        public virtual DbSet<ACUnlockComb> ACUnlockComb { get; set; }
        public virtual DbSet<AlarmLog> AlarmLog { get; set; }
        public virtual DbSet<AttParam> AttParam { get; set; }
        public virtual DbSet<AuditedExc> AuditedExc { get; set; }
        public virtual DbSet<AUTHDEVICE> AUTHDEVICE { get; set; }
        public virtual DbSet<CHECKEXACT> CHECKEXACT { get; set; }
        public virtual DbSet<CHECKINOUT> CHECKINOUT { get; set; }
        public virtual DbSet<DEPARTMENTS> DEPARTMENTS { get; set; }
        public virtual DbSet<DeptUsedSchs> DeptUsedSchs { get; set; }
        public virtual DbSet<FaceTemp> FaceTemp { get; set; }
        public virtual DbSet<HOLIDAYS> HOLIDAYS { get; set; }
        public virtual DbSet<Incidencia> Incidencia { get; set; }
        public virtual DbSet<LeaveClass> LeaveClass { get; set; }
        public virtual DbSet<LeaveClass1> LeaveClass1 { get; set; }
        public virtual DbSet<Machines> Machines { get; set; }
        public virtual DbSet<NUM_RUN> NUM_RUN { get; set; }
        public virtual DbSet<NUM_RUN_DEIL> NUM_RUN_DEIL { get; set; }
        public virtual DbSet<ReportItem> ReportItem { get; set; }
        public virtual DbSet<SchClass> SchClass { get; set; }
        public virtual DbSet<SECURITYDETAILS> SECURITYDETAILS { get; set; }
        public virtual DbSet<SHIFT> SHIFT { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<SystemLog> SystemLog { get; set; }
        public virtual DbSet<TBSMSALLOT> TBSMSALLOT { get; set; }
        public virtual DbSet<TBSMSINFO> TBSMSINFO { get; set; }
        public virtual DbSet<TEMPLATE> TEMPLATE { get; set; }
        public virtual DbSet<TipoIncidencia> TipoIncidencia { get; set; }
        public virtual DbSet<TipoJustificacion> TipoJustificacion { get; set; }
        public virtual DbSet<USER_OF_RUN> USER_OF_RUN { get; set; }
        public virtual DbSet<USER_SPEDAY> USER_SPEDAY { get; set; }
        public virtual DbSet<USER_TEMP_SCH> USER_TEMP_SCH { get; set; }
        public virtual DbSet<UserACMachines> UserACMachines { get; set; }
        public virtual DbSet<UserACPrivilege> UserACPrivilege { get; set; }
        public virtual DbSet<USERINFO> USERINFO { get; set; }
        public virtual DbSet<UserUpdates> UserUpdates { get; set; }
        public virtual DbSet<UserUsedSClasses> UserUsedSClasses { get; set; }
        public virtual DbSet<EmOpLog> EmOpLog { get; set; }
        public virtual DbSet<ServerLog> ServerLog { get; set; }
        public virtual DbSet<UsersMachines> UsersMachines { get; set; }
        public virtual DbSet<roles> roles { get; set; }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    
        public virtual int spGetAusencias()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spGetAusencias");
        }
    
        public virtual ObjectResult<spGetDptoInc_Result> spGetDptoInc(Nullable<int> departamento, Nullable<System.DateTime> fecha)
        {
            var departamentoParameter = departamento.HasValue ?
                new ObjectParameter("departamento", departamento) :
                new ObjectParameter("departamento", typeof(int));
    
            var fechaParameter = fecha.HasValue ?
                new ObjectParameter("fecha", fecha) :
                new ObjectParameter("fecha", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spGetDptoInc_Result>("spGetDptoInc", departamentoParameter, fechaParameter);
        }
    
        public virtual ObjectResult<spGetUserInc_Result> spGetUserInc(Nullable<int> userid, Nullable<System.DateTime> fecha)
        {
            var useridParameter = userid.HasValue ?
                new ObjectParameter("userid", userid) :
                new ObjectParameter("userid", typeof(int));
    
            var fechaParameter = fecha.HasValue ?
                new ObjectParameter("fecha", fecha) :
                new ObjectParameter("fecha", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spGetUserInc_Result>("spGetUserInc", useridParameter, fechaParameter);
        }
    
        public virtual ObjectResult<spGetUserMarks_Result> spGetUserMarks(Nullable<int> userid, Nullable<System.DateTime> fecha)
        {
            var useridParameter = userid.HasValue ?
                new ObjectParameter("userid", userid) :
                new ObjectParameter("userid", typeof(int));
    
            var fechaParameter = fecha.HasValue ?
                new ObjectParameter("fecha", fecha) :
                new ObjectParameter("fecha", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spGetUserMarks_Result>("spGetUserMarks", useridParameter, fechaParameter);
        }
    
        public virtual int spUpdateJustificarInc(Nullable<int> inci, Nullable<int> tipoJustificacion, Nullable<bool> justificado)
        {
            var inciParameter = inci.HasValue ?
                new ObjectParameter("inci", inci) :
                new ObjectParameter("inci", typeof(int));
    
            var tipoJustificacionParameter = tipoJustificacion.HasValue ?
                new ObjectParameter("tipoJustificacion", tipoJustificacion) :
                new ObjectParameter("tipoJustificacion", typeof(int));
    
            var justificadoParameter = justificado.HasValue ?
                new ObjectParameter("justificado", justificado) :
                new ObjectParameter("justificado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spUpdateJustificarInc", inciParameter, tipoJustificacionParameter, justificadoParameter);
        }
    
        public virtual ObjectResult<Nullable<System.DateTime>> spGetUserFechasMark(Nullable<int> userid)
        {
            var useridParameter = userid.HasValue ?
                new ObjectParameter("userid", userid) :
                new ObjectParameter("userid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<System.DateTime>>("spGetUserFechasMark", useridParameter);
        }
    }
}
