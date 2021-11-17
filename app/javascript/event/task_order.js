document.addEventListener("turbolinks:load", function(){
  if (document.getElementById("task_order_by")) {
    const orderBy = document.getElementById("task_order_by")
    orderBy.addEventListener("change", (e) =>{
      location.href = orderBy.value
    })
  }
})