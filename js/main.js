import { fetchData } from "./modules/DataMiner.js";

(() => {
    console.log('loaded');

    function favoriteThings(thumbs) {
        let columnSection = document.querySelector('.column-section'),
            columnTemplate = document.querySelector('#column-template').content;

        for (let column in thumbs) {
            let currentColumn = columnTemplate.cloneNode(true),
                currentColumnText = currentColumn.querySelector('.column').children;

            currentColumnText[1].src = `images/${thumbs[column].Img}`;
            currentColumnText[1].id = thumbs[column].id;
           
            columnSection.appendChild(currentColumn);
        }
        columnSection.addEventListener("click", retrieveInfo);
    }

    fetchData("./includes/index.php").then(data => favoriteThings(data)).catch(err => console.log(err));
})();