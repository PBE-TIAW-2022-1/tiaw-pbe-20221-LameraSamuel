var select = document.querySelector('#ajax');

var id_curso;

function handleCurso(){
   var objDisc;
   id_curso = select.value;

   var xhr = new XMLHttpRequest();

   xhr.onreadystatechange = function () {
      if(xhr.readyState == 4){
         var a = JSON.parse(xhr.response);
         objDisc = a;
         console.log(a[0].id_disciplina)

         $(".disciplinas").html('<option value="">Selecione a Disciplina</option>');   
         objDisc.map( resp => { 
            var selectDisc = document.querySelector('.disciplinas')
            var option = document.createElement('option')
            option.text = resp.Disciplina;
            option.value = resp.id_disciplina

            selectDisc.add(option)
         })

      }
   }

   xhr.open('get', `http://localhost/LabSolu-es/Listacurso.php?id=${id_curso}`)

   xhr.send();
}



