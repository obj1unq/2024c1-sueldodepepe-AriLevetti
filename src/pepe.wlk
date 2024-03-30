object pepe {

	var categoria = cadete
	var bonoXResultados = resultadoNulo
	var bonoXPresentismo = presentismoNulo
	var faltas = 0

	method sueldo() {
		return self.neto() + self.resultado() + self.presentismo()
	}

	method neto() {
		return categoria.neto()
	}

	method categoria(_categoria) {
		categoria = _categoria
	}

	method resultado() {
		return bonoXResultados.valor(self)
	}

	method presentismo() {
		return bonoXPresentismo.valor(self)
	}

	method bonoXResultados(_bonoXResultados) {
		bonoXResultados = _bonoXResultados
	}

	method bonoXPresentismo(_bonoXPresentismo) {
		bonoXPresentismo = _bonoXPresentismo
	}

	method faltas(_faltas) {
		faltas = _faltas
	}

	method faltas() {
		return faltas
	}

}

object gerente {

	method neto() {
		return 15000
	}

}

object cadete {

	method neto() {
		return 20000
	}

}

// Bono resultado
object porcentaje {

	method valor(empleado) {
		return empleado.neto() * 0.10
	}

}

object montoFijo {

	method valor(categoria) {
		return 800
	}

}

object resultadoNulo {

	method valor(categoria) {
		return 0
	}

}

// Bono Presentismo
object normal {

	method valor(empleado) {
		return if (empleado.faltas() == 0) {
			2000
		} else if (empleado.faltas() == 1) {
			1000
		} else {
			0
		}
	}

}

object presentismoNulo {

	method valor(empleado) {
		return 0
	}

}

object demagogico {

	method valor(empleado) {
		return if (empleado.neto() < 18000) {
			500
		} else {
			300
		}
	}

}

object ajuste {

	method valor(empleado) {
		return if (empleado.faltas() == 0) {
			100
		} else {
			0
		} // empleado.asistenciaPerfecta() y resolver en subtarea
	}

}

// BONUS
object sofia {

	var categoria = cadete
	var bonoXResultados = resultadoNulo
	var faltas = 0

	method sueldo() {
		return self.neto() + self.resultado()
	}

	method neto() {
		return categoria.neto() * 1.30
	}

	method categoria(_categoria) {
		categoria = _categoria
	}

	method resultado() {
		return bonoXResultados.valor(self)
	}

	method bonoXResultados(_bonoXResultados) {
		bonoXResultados = _bonoXResultados
	}

	method faltas(_faltas) {
		faltas = _faltas
	}

	method faltas() {
		return faltas
	}

}

object vendedor {

	var muchaVenta = false

	method neto() {
		return if (muchaVenta) {
			16000 * 1.25
		} else {
			16000
		}
	}

	method activarAumentoPorMuchasVentas() {
		muchaVenta = true
	}

	method desactivarAumentoPorMuchasVentas() {
		muchaVenta = false
	}

}

object medioTiempo {

	var categoriaBase = cadete

	method categoriaBase(_categoriaBase) {
		categoriaBase = _categoriaBase
	}

	method neto() {
		return categoriaBase.neto() / 2
	}

}

