document.addEventListener("DOMContentLoaded", () => {

const searchInput = document.getElementById("searchInput");
const skillFilter = document.getElementById("skillFilter");
const cards = document.querySelectorAll(".card");

function filterEmployees() {
  const searchValue = searchInput.value.toLowerCase();
  const selectedSkill = skillFilter.value;

  cards.forEach(card => {
    const text = card.innerText.toLowerCase();
    const matchesSearch = text.includes(searchValue);
    const matchesSkill = selectedSkill === "" || text.includes(selectedSkill.toLowerCase());

    if(matchesSearch && matchesSkill){
      card.style.display = "block";
    } else {
      card.style.display = "none";
    }
  });
}

searchInput.addEventListener("input", filterEmployees);
skillFilter.addEventListener("change", filterEmployees);

});