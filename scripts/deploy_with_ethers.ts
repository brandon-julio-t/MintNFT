import { ethers } from 'ethers'
import { deploy } from './ethers-lib'

(async () => {
  try {
    const signer = (new ethers.providers.Web3Provider(web3Provider)).getSigner();
    const address = await signer.getAddress()
    
    const result = await deploy('MyWaifuNFTToken', [address])
    
    console.log(`address: ${result.address}`)
  } catch (e) {
    console.log(e.message)
  }
})()