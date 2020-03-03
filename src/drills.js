console.log('hello drills lets tackle the shopping list')

require('dotenv').config()
const knex = require('knex')

const knexInstance = knex({
    client: 'pg',
    connection: process.env.DB_URL,
  })

  const searchItem = (searchTerm) => {
      knexInstance
        .select('*')
        .from('shopping_list')
        .where('name', 'ILIKE', `%${searchTerm}%`)
        .then(result => {
            console.log('SEARCH TERM', {searchTerm})
            console.log(result)
        })
  }

  searchItem('beef')

  const searchPage = (pageNumber) => {
      productsPerPage = 6
      const offset = productsPerPage * (pageNumber - 1)
      knexInstance
      .select('*')
      .from('shopping_list')
      .limit(productsPerPage)
      .offset(offset)
      .then(result => {
          console.log('SEARCH PAGE', {pageNumber})
          console.log(result)
      })
  }

  searchPage(2)

  const searchItemDate = (daysAgo) => {
      knexInstance
      .select('*')
      .from('shopping_list')
      .where('date_added',
      '>',
      knexInstance.raw(`now() - '?? days':: INTERVAL`, daysAgo)
      )
      .then(results => {
          console.log('products added days ago')
          console.log(results)
      })
  }

  searchItemDate(4)

  const category = () => {
      knexInstance
      .select('category')
      .from('shopping_list')
      .sum('price as total')
      .groupBy('category')
      .then(result => {
          console.log('cost per category')
          console.log(result)
      })
  }

  category()