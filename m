Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7501912B4CB
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 14:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hE2InT+h6NEjsvm2d/8A61rMh+zU/BoUliga5t65DZU=; b=aDSZgSY44fbTB7
	r2X2KlrZeF02n0vwsC6Yv4wv4HegfMNajpcITCrncYGAD8+J/NI17g+Uyi2X22Kf9bJVLQz0gGno2
	GgsmyLwv82xQ8KoDJIQFjnlCtekYVE+PuieTftbzDsh8dG0menp6zCRMtMo6sXso4g23hnEQwRI8J
	jbV2Z/mSQQjhhRLmKAD7Kc4XbFFHMFaDX5C5qVYq4dBev3J8OjGUjNurnlHoswZKnwJVRAYdIz454
	Tdj3Jd6UhS++342K1lUakQ5dX+OKF0plKMy337//yXuhPTgfIWpaSlzerNtfzGhbeD/WZkjNhrTDk
	qE12UQsSBIEhAWp1bXgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikpWS-0003lU-W3; Fri, 27 Dec 2019 13:19:20 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikpWP-0003kz-00
 for linux-rockchip@lists.infradead.org; Fri, 27 Dec 2019 13:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1577452743;
 bh=KM5AtwEyTpKoi46s8VO/hpUa7PDLXArhCqqxjeg7feg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=F1LoFiP2fnJX2qCe7cfGEOf8p1TS3ZIPWEzUUTPEvbRs6R/mOqMUmz2pAl895BtpH
 FZOzCnrmRH3Dir3W9o0sJdo0OGo24XOuBCOIEgt2oEOvHxVYbvEJTBQRsj0bdW3dJo
 0WqzM76JW1pnpPLrDioPON9Ls5CgvHa6K7qH+0kY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([78.54.38.237]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MSrgv-1jAVFa2ZOP-00RpXB; Fri, 27
 Dec 2019 14:19:03 +0100
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Jagan Teki <jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
 <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
 <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
From: Soeren Moch <smoch@web.de>
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <30fdf54b-0f71-ffbf-ac57-51050a29b56d@web.de>
Date: Fri, 27 Dec 2019 14:19:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:SjJ9xldyfXv44Z2F875DcCesCuWLyhO7zAqPwejp+8IMDJ7E1Id
 1mgtxPdBT5ylmZpqn7CWfoWhHQAVLgqkT/DT2WCXAkVmYddToq9eRs3+9bV6Nm7NB/pcXzr
 lZ6F+gOwxHjE2cltiCcxJPW85IZYH+2KpZZA50cxRjwhn9kEd3gb+VPxQv44pSAzh9ZutPL
 h3hAm2LPtRhylWmDSufZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IjMBlsIZH94=:41rWnzoJRRz6CJGqWMIL2I
 c7VKR5I1aTMpPYJIrFuT4pcVgfRvR63v/ULr8BQgqjBH33xynsw5eFK0Z+nEpiV6K0EOdA5Jp
 IS1+2pNVbl+CENrejDsgmRBgy3JMDYlefVrOhCxyHJjaFxdT9ePH6yntc7fty28yEEQPBE+6b
 VQPp54EyjcbD6oeoJjm1ZrJJWje5bijXWnsUc1KjsGYME099vrT6vtVe9ryz98ZpHihFvoKgt
 VS69LzaKofqQzt5nO1kC4gG/2jva1eb+KtbZLdL4Our/KL3UdfwqPh8P/O03QrmRoU03PMtAF
 hTrJ+yk+k3f+Hf+58zrnodB1XwznYv8H5NFdytiI2uvIn/ovjsmzhR78vJ70QB+3o3piTm7vb
 gqvR0vxW1mzp9GDpuQimuXTDMxyuQqsDU6aaV7PPRX+wVY6eWoMsBj5worKwuhMKSToDQMAyK
 Laggk1ABO4Xenf8HkOGISgKSYLyhlEZscc2JXpRcPb3TFrOZj9gzOEhIYSqYRseEDma/uQUVL
 ce4lJ3zMKdeUzhF1O57kASlH/EOXfylpMS6PjdeyYcliGELopCE+m2uU99duIbaB/cvcbLV7m
 EpKhBwRcZDPrkd3q15XnWdffHird6AFxGdTTn3xGrYp54O1+UvQeqbvNHRKuqkSwizZmk65q0
 vCKDpft4knZ/Df8ioPEYxLrMTsevaxgmAMynPScHj0H40i2/LXCLwRGd84yApmpxhwRCxf79e
 SQylzBpnYThq0QuSput8MXiaPm3O9tMfAHuiZjmSLSF0lqXZfEHgkxHgJ5P8v+bYF8w26oTxD
 WFZwO8u6mn0u5nkT4bkOeFCtjTjUnLZgIaNiJxjNQJqnPlYz8zJCkmUXDPPrTB6i8cQUDRzBa
 oOAFlj5ClwJYGzUign4pLISuh7cC0EBUKop6TVEE3ji+YjWC598sEdpP0zY2RNEPGYLUvvZ5O
 YIavcO8yjRlZnbcPxKvcOva6ING8q0TUStRz0Oz4cllRoNvkptBqyNye77njfdjwtDssKDo53
 h4WlfKA8Xm6aX1rBYV0ODouzeGdkB2Ir4Jgser37otGfDC+LECe5H5dIlYNTUrlvaR8NT9L2q
 5g1yXvLNfsG4xJMhTCWxojV8IQwUlLOzEQZEZYEKG8uxbhRCQ1sIyBglCm0NenigfI2gi4K2d
 a7RBqEcCd6V0mUcSBYWo8ff1VCEdkq2MM/RE27wPJ0zgLFM38ZIHEIbOkv7I8lNQMWRXgC8Iq
 oT4DVLfq+Od5sLlbE48pzLlmRdLnyH3J8uAyPcQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_051917_371330_387A2AD0 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.11 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiAyNy4xMi4xOSAxMzowNCwgSmFnYW4gVGVraSB3cm90ZToKPiBPbiBGcmksIERlYyAyNywg
MjAxOSBhdCA0OjAwIFBNIFNvZXJlbiBNb2NoIDxzbW9jaEB3ZWIuZGU+IHdyb3RlOgo+PiBIaSEK
Pj4KPj4gT24gMjcuMTIuMTkgMDc6NTAsIEphZ2FuIFRla2kgd3JvdGU6Cj4+PiBIaSBLZXZlciwK
Pj4+Cj4+PiBPbiBNb24sIERlYyAyMywgMjAxOSBhdCA4OjA0IEFNIEtldmVyIFlhbmcgPGtldmVy
LnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Pj4+IEphZ2FuLAo+Pj4+Cj4+Pj4KPj4+PiBP
biAyMDE5LzEyLzIxIOS4i+WNiDM6NTQsIEphZ2FuIFRla2kgd3JvdGU6Cj4+Pj4+IE1vc3Qgb2Yg
dGhlIFNQSSBmbGFzaCBkZXZpY2VzIGluIHJvY2tjaGlwIGFyZSAxNk1pQiBzaXplLgo+Pj4+Pgo+
Pj4+PiBTbywga2VlcGluZyBVLUJvb3QgcHJvcGVyIG9mZnNldCBzdGFydCBmcm9tIDEyOE1pQiB3
aXRoIDFNaUIKPj4+Pj4gc2l6ZSBhbmQgdGhlbiBzdGFydCBlbnYgb2YgOEtpQiB3b3VsZCBiZSBh
IGNvbXBhdGlibGUgbG9jYXRpb24KPj4+Pj4gYmV0d2VlbiBhbGwgdmFyaWFudHMgb2YgZmxhc2gg
c2l6ZXMuCj4+Pj4+Cj4+Pj4+IFRoaXMgcGF0Y2ggYWRkIGVudiBzdGFydCBmcm9tIDB4MTQwMDAg
d2l0aCBhIHNpemUgb2YgOEtpQi4KPj4+PiBXaGF0J3MgdGhlIHNwYWNlIG1hcCBpbiBTUEkgZmxh
c2ggc3VwcG9zZSB0byBiZT8gSW5jbHVkaW5nCj4+Pj4gdHBsL3NwbC91LWJvb3QuaXRiCj4+Pj4K
Pj4+PiBJIHdvdWxkIHByZWZlciB0byB1c2UgMTI4S2lCLThLaUIgYXMgdGhlIGVudiBzdGFydCBh
ZGRyZXNzLCB3ZSdkIGJldHRlcgo+Pj4+IHRvIGF2b2lkIHRoZQo+Pj4+Cj4+Pj4gcmlzayBvZiBv
dmVybGFwIGJldHdlZW4gdGhlIGVudiBzcGFjZSBhbmQgdGhlIGZpcm13YXJlIHNwYWNlLgo+Pj4g
SGVyZSBpcyB0aGUgMTZNaUIgZmxhc2ggbGF5b3V0LCBJIGhhdmUgdXNlZC4gSSBjYW4gc2VlIHRo
ZSBsb2FkZXIxCj4+PiAodHBsL3NwbCkgY2FuIGJlIHBvc3NpYmxlIHRvIGxvYWQgYXQgMHgwIG9y
IDB4MzJLIHNvIEkgaGF2ZSBnaXZlbiB0aGUKPj4+IHNwYWNlIGZvciBpdC4gYW5kIDhLIGVudiBh
ZnRlciBsb2FkZXIyKHUtYm9vdCkuIGxldCBtZSBrbm93IHlvdXIKPj4+IHRob3VnaHRzPwo+PiBX
aHkgd2UgY2Fubm90IHVzZSB0aGUgc2FtZSBsYXlvdXQgYXMgd2hhdCBpcyBkZWZpbmVkIGZvciBT
RC9lTU1DOgo+PiBodHRwOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS93aWtpX1BhcnRpdGlv
bnMKPj4KPj4KPj4KPj4+ICAgICAgICAgICAweDAgLSAweDgwMDAsICAgICAgIDMySyAgPT4gIHJl
c2VydmVkL2xvYWRlcjEKPj4+ICAgICAweDgwMDAgLSAweDQwMDAwLCAgICAyMjRLID0+ICBsb2Fk
ZXIxCj4+PiAgIDB4NDAwMDAgLSAweDE0MDAwMCwgICAgMU0gID0+ICBsb2FkZXIyCj4+PiAweDE0
MDAwMCAtIDB4MTQyMDAwLCAgICA4SyAgPT4gICBlbnYKPj4+IDB4MTQyMDAwIC0gMHg4NDIwMDAs
ICAgIDdNICA9PiAga2VybmVsCj4+PiAweDg0MjAwMCAtIDB4ODUzODAwLCAgMTAwSyA9PiAgZHRi
Cj4+PiAweDg1MzgwMCAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICA9PiAgcm9vdAo+PiBU
aGVzZSBzbWFsbCBsb2FkZXIxL2xvYWRlcjIgcGFydGl0aW9ucyBtYXkgYnl0ZSB1cyBsYXRlciB3
aGVuIG5ld2VyCj4+IHUtYm9vdCB2ZXJzaW9ucyBvbmx5IHdpbGwgZml0IGZvciBTRCBhbmQgbm90
IGZvciBTUEkgYW55bW9yZS4KPiBZZXMsIHRoZSBpbml0aWFsIGlkZWEgaXMgdG8gcmV1c2UgdGhl
IGV4aXN0aW5nIFNEIGxheW91dCBidXQgdGhlIFNQSQo+IGZsYXNoIGlzIGxpbWl0ZWQgaW4gc2l6
ZSwgYW5kIGl0IGlzIGZ1cnRoZXIgbGltaXRlZCBpbiByazMzOTkgYm9hcmRzCj4gKHJvY2twcm82
NCwgcm9jLXJrMzM5OS1wYy4uKS4gd2hpY2ggaXMgMTZNaUIuIFNvIHJldXNpbmcgaGFsZiBvZiB0
aGUKPiBmbGFzaCBzaXplIHdpbGwgb2NjdXB5IGZvciB0aWxsIGxvYWRlcjIgaW4gU0Qgc2NoZW1l
LgpFeGFjdGx5LiBPbiBteSBSb2NrUHJvNjQgU1BJIGZsYXNoIHNpemUgaXMgMTZNaUIuIFRoaXMg
Y292ZXJzIGV2ZXJ5dGhpbmcKdXAgdG8gImJvb3QiLCBlc3BlY2lhbGx5IGxvYWRlcjEsIGxvYWRl
cjIsIGFuZCBVLUJvb3QgRU5WLiBQcm9iYWJseSB0aGUKU1BJIG9uIHRoZXNlIGJvYXJkcyBpcyBz
aXplZCB0aGlzIHdheSB0byBleGFjdGx5IG1hdGNoIHRoaXMgdXNlIGNhc2UuCldoYXQgc2hvdWxk
IGJlIHRoZSBhZHZhbnRhZ2Ugb2Ygb25seSB1c2luZyBoYWxmIG9mIHRoZSBhdmFpbGFibGUgbWVt
b3J5Pwo+PiBUaGUgcmVzZXJ2ZWQgc3BhY2UgZm9yIGtlcm5lbCBpcyBhbHJlYWR5IHRvbyBzbWFs
bCBmb3Igbm9ybWFsIGtlcm5lbAo+PiBidWlsZHMgdG9kYXksIG5vdCB0byBtZW50aW9uIGEgcm9v
dCBmaWxlc3lzdGVtLgo+Pgo+PiBBcmUgdGhlcmUgYW55IHVzZSBjYXNlcyB3aGVyZSBzb21lYm9k
eSBuZWVkcyB0byBwbGFjZSBib290IGFuZCByb290Cj4+IHBhcnRpdGlvbnMgb24gU1BJIGZsYXNo
Pwo+IFNvLCBleHBsYWluZWQgYWJvdmUgZHVlIHRvIHNpemUgbGltaXRhdGlvbiB0aGUgcmVzcGVj
dGl2ZSBibG9ja3MgbGlrZQo+IGtlcm5lbCwgcm9vdCAod2UgY2FuIHNheSBpbml0cmQpIGFyZSBp
bmRlZWQgbGVzcy1zaXplZCBwYXJ0aXRpb25zLgo+IE1vcmVvdmVyIFNQSSBmbGFzaCBpcyBub3Qg
YSBzdWl0YWJsZSBzdG9yYWdlIGZvciByb290ZnMgaW4gcm9ja2NoaXAsCj4gc2luY2UgdGhlIGJv
b3Qgb3JkZXIgc3RhcnQgZnJvbSBTUEkgZmxhc2ggdXN1YWxseSBib2FyZCB3b3VsZCBib290Cj4g
ZnJvbSBmbGFzaCBhbmQgdGhlbiBsb29rIGZvciBTRCwgZU1NQywgUENJZSBOVk0gZm9yIGxvYWRp
bmcgYmlnIGNodW5rCj4gcm9vdGZzLgo+Cj4gTW9yZSBvciBsZXNzIHRoZSBpZGVhIG9mIGFib3Zl
IGZsYXNoIGxheW91dCBpcyB0byBmaXQgcHJvcGVybHkKPiB3aXRoLWluLXRoZSBzaXplIGJvdW5k
YXJpZXMgYW5kIGluZGVlZCBmb3Igc21hbGwgaW5pdHJhbWZzIHN5c3RlbXMuCldlIHVzZSBkaXN0
cm9ib290IGluIHRoZSBkZWZjb25maWdzIG9mIHRoZXNlIGJvYXJkcywgc28gbm8gc2VwYXJhdGUK
c3BhY2UgZm9yIGtlcm5lbCBvciBpbml0cmQgaXMgcmVxdWlyZWQgaW4gKHJhdykgZmxhc2gsIHRo
ZXNlIGJsb2JzIGFyZQphbHdheXMgbG9hZGVkIGZyb20gdGhlIGJvb3QgcGFydGl0aW9uIGluc3Rl
YWQuCkJlc2lkZXMgdGhhdCwga2VybmVscyBmb3IgbXkgUm9ja1BybzY0IGFyZSBiaWdnZXIgKDEy
TWlCIC0gMjBNaUIpIHRoYW4KdGhlIGF2YWlsYmFsZSBzcGFjZSBpbiBTUEkgYW55d2F5LCB3aXRo
IGFkZGl0aW9uYWwgfjVNaUIgZm9yIGluaXRyZC4KCk15IHVzZSBjYXNlIGZvciBTUEkgd291bGQg
YmUgdG8gc3RvcmUgdS1ib290K1NQTCtUUEwrQVRGK2Vudmlyb25tZW50CnRoZXJlLCBzbyB0aGF0
IEkgY2FuIHVzZSBhIHNpbmdsZSBjb21iaW5lZCByb290K2Jvb3QgcGFydGl0aW9uIG9uIGEgU0QK
Y2FyZCAvIFVTQiBkaXNrLgpTbyBJIHRoaW5rIHRoZSBlYXNpZXN0LCBsZWFzdCBjb25mdXNpbmcs
IGFuZCBmdXR1cmUtcHJvb2bCoCBTUEkgcGFydGl0aW9uCnNjaGVtZSB3b3VsZCBiZSB0byB1c2Ug
ZXhhY3RseSB3aGF0IGlzIGRlZmluZWQgYWxyZWFkeSBmb3IgU0QvZU1NQy4KClNvZXJlbgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
