class SearchBar extends React.Component {

	render() {
		return (
			<div>
			  <form id="search-form" onSubmit={this.handleSubmit}>
			    <input ref="search" id="search" type="text" name="query"/>
			  </form>
			</div>
		)
	}
}