﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class Espacio
    {
        private int idEstacionamiento;
        private int idTipo;
        private string numeracion;

        public Espacio(int idEstacionamiento, int idTipo, string numeracion)
        {
            this.idEstacionamiento = idEstacionamiento;
            this.idTipo = idTipo;
            this.numeracion = numeracion;
        }

        public int IdEstacionamiento { get => idEstacionamiento; set => idEstacionamiento = value; }
        public int IdTipo { get => idTipo; set => idTipo = value; }
        public string Numeracion { get => numeracion; set => numeracion = value; }
    }
}