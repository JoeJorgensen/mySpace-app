import axios from "axios"
import { useEffect, useState } from "react"
import Card from "../Card"
import { Link } from "react-router-dom"
import Badge from "react-bootstrap/esm/Badge"


const Feed = ()=>{
const [friends, setFriends] = useState([])
const [error, setError] = useState(null)

    
useEffect(()=>{
        getFriends()
    },[])

const getFriends = async()=>{
    try{
        let res = await axios.get('/api/friends')
        setFriends(res.data)
    }catch(err){
        setError(err)
        alert('error getting friends :/')
    }
}
const sample= ()=>{
    if(friends.length){
        const index = Math.floor(Math.random()*friends.length)
        return friends[index]
    }
    return null
}

if(error)return <p>{JSON.stringify(error)}</p>
const friend = sample();
if(friend){
    return (
            <>

        <br />
        <h1 style={{textAlign: 'center'}}>
        <Badge >MySpace</Badge>
        </h1>

        <Card>
        
        <br />
        <div key={friend.id}>
          <img src={friend.avatar} />
          <section>
            <h3>{friend.name}</h3>
            <p>{friend.bio}</p>
          </section>
          <section>
            <button>Add Friend</button>
            <button>Skip Friend</button>
          </section>
        </div>
        <Link to="/my_friends">
          <button>My friends</button>
        </Link>
          </Card>
      </>
      
    )
}else {
    return <h1>No More Friends :/</h1>
}

} 
export default Feed