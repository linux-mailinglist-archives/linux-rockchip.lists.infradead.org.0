Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C5612B3C6
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 11:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PMKRqeeSWr+9711ryzAinOfLwA7kUKGZGYxQHTAt6vQ=; b=VBA6ue302Ybb13l6ZrsCeaQ3i
	TTdcVEhCkWFHkHV6oSOF9z8KsIvzJ1JiZSDZszovsjnpbk7+6WfI/5Xosg40OykpCV45X+5a0epEB
	WdsfwkzP4fO1znFt7LJ+KbAoTM3dM5zQccn1gy4oh1Lxcl/5jioegSbpco1uapS/xM4/76Skv4mgW
	o4uuumGPLZUc7HsZOQWT2TPRBmkG9TChAeJRY4CA/ONtEfa2dbOV3fpWXe+0sLGAOBaAcl8mf+Ogb
	DDeK+R0V26VMBxgmVhdEpXpBNPXZdxkZsUne/0NPLR3ZKhZHZ+EVhtUc7qmw7NnMgyiISjXL5BjoM
	uWxfCgABA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikmSU-0001SX-LN; Fri, 27 Dec 2019 10:03:02 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikmSR-0001Rc-MA
 for linux-rockchip@lists.infradead.org; Fri, 27 Dec 2019 10:03:01 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id E35233BF;
 Fri, 27 Dec 2019 18:02:47 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31324T140475584202496S1577440966494441_; 
 Fri, 27 Dec 2019 18:02:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6836aea8d30e6fade7a28cf64b8f6cc0>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Jagan Teki <jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ea1db706-33dc-91db-eafd-e925c36dae81@rock-chips.com>
Date: Fri, 27 Dec 2019 18:02:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_020259_899147_4CB6E5BA 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjcg5LiL5Y2IMjo1MCwgSmFnYW4gVGVraSB3cm90ZToKPiBIaSBLZXZlciwK
Pgo+IE9uIE1vbiwgRGVjIDIzLCAyMDE5IGF0IDg6MDQgQU0gS2V2ZXIgWWFuZyA8a2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+IEphZ2FuLAo+Pgo+Pgo+PiBPbiAyMDE5LzEyLzIx
IOS4i+WNiDM6NTQsIEphZ2FuIFRla2kgd3JvdGU6Cj4+PiBNb3N0IG9mIHRoZSBTUEkgZmxhc2gg
ZGV2aWNlcyBpbiByb2NrY2hpcCBhcmUgMTZNaUIgc2l6ZS4KPj4+Cj4+PiBTbywga2VlcGluZyBV
LUJvb3QgcHJvcGVyIG9mZnNldCBzdGFydCBmcm9tIDEyOE1pQiB3aXRoIDFNaUIKPj4+IHNpemUg
YW5kIHRoZW4gc3RhcnQgZW52IG9mIDhLaUIgd291bGQgYmUgYSBjb21wYXRpYmxlIGxvY2F0aW9u
Cj4+PiBiZXR3ZWVuIGFsbCB2YXJpYW50cyBvZiBmbGFzaCBzaXplcy4KPj4+Cj4+PiBUaGlzIHBh
dGNoIGFkZCBlbnYgc3RhcnQgZnJvbSAweDE0MDAwIHdpdGggYSBzaXplIG9mIDhLaUIuCj4+IFdo
YXQncyB0aGUgc3BhY2UgbWFwIGluIFNQSSBmbGFzaCBzdXBwb3NlIHRvIGJlPyBJbmNsdWRpbmcK
Pj4gdHBsL3NwbC91LWJvb3QuaXRiCj4+Cj4+IEkgd291bGQgcHJlZmVyIHRvIHVzZSAxMjhLaUIt
OEtpQiBhcyB0aGUgZW52IHN0YXJ0IGFkZHJlc3MsIHdlJ2QgYmV0dGVyCj4+IHRvIGF2b2lkIHRo
ZQo+Pgo+PiByaXNrIG9mIG92ZXJsYXAgYmV0d2VlbiB0aGUgZW52IHNwYWNlIGFuZCB0aGUgZmly
bXdhcmUgc3BhY2UuCj4gSGVyZSBpcyB0aGUgMTZNaUIgZmxhc2ggbGF5b3V0LCBJIGhhdmUgdXNl
ZC4gSSBjYW4gc2VlIHRoZSBsb2FkZXIxCj4gKHRwbC9zcGwpIGNhbiBiZSBwb3NzaWJsZSB0byBs
b2FkIGF0IDB4MCBvciAweDMySyBzbyBJIGhhdmUgZ2l2ZW4gdGhlCj4gc3BhY2UgZm9yIGl0LiBh
bmQgOEsgZW52IGFmdGVyIGxvYWRlcjIodS1ib290KS4gbGV0IG1lIGtub3cgeW91cgo+IHRob3Vn
aHRzPwo+Cj4gICAgICAgICAgICAweDAgLSAweDgwMDAsICAgICAgIDMySyAgPT4gIHJlc2VydmVk
L2xvYWRlcjEKPiAgICAgIDB4ODAwMCAtIDB4NDAwMDAsICAgIDIyNEsgPT4gIGxvYWRlcjEKPiAg
ICAweDQwMDAwIC0gMHgxNDAwMDAsICAgIDFNICA9PiAgbG9hZGVyMgo+IDB4MTQwMDAwIC0gMHgx
NDIwMDAsICAgIDhLICA9PiAgIGVudgo+IDB4MTQyMDAwIC0gMHg4NDIwMDAsICAgIDdNICA9PiAg
a2VybmVsCj4gMHg4NDIwMDAgLSAweDg1MzgwMCwgIDEwMEsgPT4gIGR0YgoKc3BpIE5PUiBuZWVk
IDRLQiBhcyBlcmFzZSBzaXplLCBzbyB0aGlzIG1heSBuZWVkIHVwZGF0ZSAsIG90aGVyIGl0ZW0g
Cmxvb2tzIG9rLgoKClRoYW5rcywKCi0gS2V2ZXIKCj4gMHg4NTM4MDAgLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPT4gIHJvb3QKPgo+IEphZ2FuLgo+Cj4KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
