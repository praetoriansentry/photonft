// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/*                                        .......''.''''','''.... */
/*                                 .............................'',,'... */
/*                            .......'''''''''''''''..................'''.. */
/*                       ......''',,,,,,,,,,,,,,,,,,,,,''''''''''.........'''.. */
/*                    .'''..',,,;;;;;;;;;;;;;;;,,,,,,,,,,,,,,,,,,'''''''''''''''.. */
/*                  .''.'',;;;::::::::::::::;;;;;;;;;;;;;;;;;;;;;;,,,,,,'''''....''. */
/*               ..'.',;;;:::::ccccccccc::::::::;;;;;;;;;;;;;;:;:;;;;;,,,,''''......'. */
/*             .''',,;;::::ccllllllllccccc:c:::::::;;;;;;;;;;;;;;;;;;;;;;;,,,,''......'. */
/*            .',,,;;:::cllooooooollllccccccc:::::::::::::::::::::::::::;;;;;;,,''....... */
/*           ',,,;;;:cclodddxxdddooollccccccccc::::::::::::::ccccccccccc:::;;;,,,,''.....'. */
/*         .,,,,;;:clodxxkkOOkkxxdooollcccccccccccccccccccccllloolllollccc::::;;,,,'''....'' */
/*        .',,;;:cldxkOO00KK00Okkddoollcccccccccccccccccclllooddddddddooollcc:::;;,,,'''....' */
/*       .'',;:cldxkO0KXXNNNXKK0OxdoolcccccccccccccccccclloodxxOOOOOOkkxdddoollcc:;;;,,'....'. */
/*      .'',;:loxkOKXNNWWWWNNXK0Okdollccccccccccccccccllloodxk0KXXNNXXK0Okxdooolllc:;,,,'....:. */
/*     .,',;cloxk0KXNWWMMMWWNNXK0kdolccccccccccccccclllllodxkO0KXNNNNNNXK00kxdoolllc:;,,'....'; */
/*     ''';:lodxOKXNNWMMMMWWNNXK0kdolccccccccccccclllllllodxkkO0KXNNNNXXXXK0Oxdollllc:;,,'....;' */
/*    .'',:llodx0KXNWWMMMMWWNNXKOkdolccccccccccccllllllllloooddkO0KXXXNNNNXK0Oxdolcccc:;;,'....: */
/*    ''';cloodkKXNWWMMMMMWWNXK0OkdolllcccclllccclllllccccccccllooodxkO0KKKK0kxdolcccc::;,'....,, */
/*   .'',:lllldk0KNWWMMMMMWWNXKK0kxdollccccloolccclllcccccccc:::;,,,,;:clodddoolcc:::::::,'.....c. */
/*   ''';cc:;;::clooddxxxkkkkxxxxdolcc:::::lk0xlcccllcccccodxolc:;;,,,,,,;;:ccccc:;;,,,;;,'.....;, */
/*  .'.';;,,,,,,,,,;;;;;;;:::::::::::;;;;;:okWXo::cccc::lkXX0kdocldxxdlc:;;;;;:cccc:;,,''''.....'; */
/*  .'.,;lkOOOOOkkxxdoooooooooooddoooccccodxxOWx:::cc::lOWMWNXxldOKXNNNNNKkoc:::::cc::;,''.......; */
/* .''.,lc,'''',,,,,,,,;,;,,,'''',,;;;:ckN0kkONXl;::::c0WMMMWk:::;;;;;;:coxO00Oxocccc::;,''......,. */
/* .'..c:'..','..............      .....'oOkkOKWkc;;;:kWMMW0l,,;,'.........',;cdkOOOOkdlc;,'.....'. */
/* ...,:'.'cdkOkdl:;,,''.........    .....;xkOKWNl;,',0MN0o,',,'.....'''........',,:coddolc:,'....' */
/* .'.;'.':ldO00OOxdollllc::;;,''..   .....'oO0NWk;'..c0d:.',,'''...';:clooddxxxdl:;,'',,,,,,,'...' */
/* ''';..,:cldxkOOkxxkkkxdolc::::c:;.  ......l0XWX:....,'.','.,,.....',:coxk0KNWWWNKkdl:,'......... */
/* ..,,.';::ccllooooollc:;;,,,,,;:cll;. ......:0NWo......';,';,........,;:cllodxkkOkxdocc:;,'...... */
/* ..,,',;:::::;;,''..............',;;,. ......;kXx.....,:;,;;'.......,:x0XKkdc:::cllcc::;;,'....... */
/* ..''',;::;,,'...;coxxxxxddlldOOd:..''. ......,oo,,'';cc;;c'.......';lkKWMMMWKkoolllc;;,,'........ */
/* ..''',;:;,,';oOXNNNX0kxdlcccdXWX0x;...  ......,:;,',:c:;:c........'',;:cok0XNXOdolc:;,,''........ */
/* ..''.,;;;,,ldOK0xl;'..........;oxxdl'..  .,,,;;:cllkOoc:cc''...............,;coolccc:;,'...',.''. */
/* ..''',,,',cll,....             ..;ldxc.  ;ccox0xllxNNklcoo:'......          ....'',,,,,'...,,.... */
/* ..,;;;,',::'.                     .':xc..;kkkKWKlld00xlcldd.....                  ...'.'..,;,...' */
/* ..'cl:;;;,. .                     ...c:.,ON0xOWKoldOOdccclO,,oc...                .,ldc'.,;;,.... */
/* ...:llc;,',dxl;.             ..,:lc::clkNMMOokW0lld0Ooc::lx0x:,',;:lcc:;;;::coxkO0ko:..';;::,.... */
/* ...,lddl;'';lx0KX0dlc:;;::::c:;;;,,lO0KNWWXdo0WkllxK0dc::ldxkKkc.....,:ldxxkkkxoc;'..,:clcc:'.... */
/* ....cdxkOkl,......''''.........';lkOOKXWWKxokNWxllkK0dl:ccloodOXN0dc,.......''',,,:looooolc:..... */
/* ....;ldk0XNKOo:'..     ....;lxkO00KNNWWWXOxxKWNdlokK0dlcccllllodxOXWMWX0OkxdxxkO0KXXKOxdoc:,..... */
/* .....:ox0XWWWNXK0OOkxddx0XWWWWWWWWWNKKXX0kk0NMXdlok0Odcc::ldkOkdddxOXWMMMMMMMMMMMMWNX0kxo:,...... */
/* .....';lx0NWWWNNNNNXXXXNWWWWWWNKxc,..,::dkOXWWKdlokKkoc:;,;clclx0K0OOKXWMMMMMMMMMMWNKOkdc,....... */
/* .......';lxKXNNNNNNXXNXNNXKOdc'....:xkkodk0XNNOoldOKOol:::cllol:';d0XNXNWMMMMMMMMWNKOxl;'........ */
/* .'.'......',:ldkO000Okxo:,........:dKX0kkOKNWNkooxKNKxlcccodol:::...,lkKNWMMMMMWNKOdc;'.......... */
/*  '.'............',,,'.........  .,:x00OkkOKNXklccdXWNOdllloddl:;,;......,:oxOOOxoc;'............. */
/*  ..''.......................    .',,,;,;:clc;'..'':looc:;;::::;,,:'.........',;,'................ */
/*  ..'''''''''''''............    ....   ......  .....'''.........,c:;,,'........''''.............. */
/*  ...'''',,,,'''''................'..      .,;......:,.....'....,:ccc:c::;,''',,,,'''''........... */
/*   ..'',,,,,,,,,,''..........'',;;cllc;'...  ..;,....'','''..',:::ccclllllccc:cc:;,,,''........... */
/*   ..',,,;;;;,,,,,''.....',;;;;:codxxxdxkkxl,  ...  .:ddolcc::cclllllooollllllllc:;,'''''......... */
/*    .',,,;;;;;;,,,,''...,:c::;:ldkO0KKXNWN0d;,ldo:lc,lOk0KXNXK0Okkxxxxkxolloooolc:;,''''''....... */
/*    .'',,;;;;;;;,,''''';ccc::cdO0XNWMMWNNX0oclolccddold0Okxxk0NWWXOxdoddocloooool:;,',,,''....... */
/*     .',,;;;;;;;;,,'',:ccc:;;ldOXNWWNX0xl;'..;loccl:;;;codxkxxxk00kdolcloc:oooool:;,,,,,'........ */
/*     .',,,,;;;;;;;,;;:cc:;,.';clll:;'........  .............';:ccllcll;:lc;cooolc:;,,,,''....... */
/*      .',,,,;;;;;;;;;::;;'..........'..............,;;,''';:::;,''''','':l::loolc;;,,,,'....... */
/*      ..,,,,;;;;;;,,,,,,'...   ..................,;clllcclodoolc:::c;...,l:;:llc:;;,,,''...... */
/*       ..',,,,,,;,,,,,''......lodk0XXX0kdollcccccccclodxkO00OxdollcoOO..'cc;;:cc:;;,,,'...... */
/*        ..'',,,,,,,,''..........',;::::cccccccllllclloxOKXNX0Odc:;;:co,.,cc,;:c::;,,,''..... */
/*         ..''',,,,,'''...............................'',;;;,'.....',;;..,::;;::::;,,''..... */
/*           ..'',,,,'''..... ..........                  ......';:c:::;',;:c:;:::;,,'...... */
/*            ..''',,,''........',,,,'....    ................',:llllll:;;:cc:;;;;,,'..... */
/*              ..'''''''''..'',;;;;;,'.......'',,,;;;::::;,'',;:cllooolc:clc:;;;,,'.... */
/*                ..''''''''',,;;;:::::::::ccccccllllodk0XXKkdlllloooooollll:;;,,''.... */
/*                  ..'''''''',;;::::cclllcccccccclloddk0XWMMWNKOkxdddoooll:;,,''.... */
/*                    ..'....'',,;::::::::::::::;:::ccloxk0XNNXK0kxddooolc;,''..... */
/*                      ..'....'',,,,,,,,;;;,,,,,,,,;;::clodxxxdddooolc:;,'..... */
/*                        ..............'''''......''',,;;:::ccccccc:;,'..... */
/*                           ...........................'',,,;;;,,''....... */
/*                             ...........      ...........'''......... */
/*                                 ...                 . */


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

// This is an experimental contract for hosting my photos. The basic
// idea is that photographers could use a very simple contract based
// on a boiler plate like this in order to push their photos to the
// blockchain. The only change I've made here is to be able to mint
// multiple tokens at a time and also to be able to change the base
// URI. If I want to finalize the collection and make it permanent at
// some point, I might want to move this to arweave or IPFS.

// I think this could be a more interesting approach for small
// photographers, rather than locking into a big contract.

// You can find me at https://twitter.com/praetorian/

/// @custom:security-contact photo@j4.is
contract PraetorianPhoto is ERC721, Pausable, Ownable, ERC721Burnable {

    // Internal state tracking for the token id counter
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    // hard coding the default base URI to be my server's address
    string public baseURI = "https://j4.is/p/";

    // I can't come up with a better name
    constructor() ERC721("PraetorianPhoto", "JFH4") {
        pause();
    }

    // internal getter function to retrieve the base URI. This is used by the default ERC721 contracts
    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    // Stop minting
    function pause() public onlyOwner {
        _pause();
    }

    // Start Minting
    function unpause() public onlyOwner {
        _unpause();
    }

    // Cahgne the BaseURI
    function setURI(string memory uri) public onlyOwner {
        baseURI = uri;
    }

    // mint a few at a time
    function safeMint(address to, uint256 numToMint) public onlyOwner {
        uint256 tokenId;
        for(uint i = 0; i < numToMint; i = i + 1) {
            _tokenIdCounter.increment();
            tokenId = _tokenIdCounter.current();
            _safeMint(to, tokenId);
        }

    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId);
    }
}
