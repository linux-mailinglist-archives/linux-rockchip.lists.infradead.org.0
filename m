Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A72A1E04F1
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 04:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZxHs7ltD9U9VAjD9poE2Lu5aKByPgWNS+WX+n6JAxtU=; b=ePbOwwrVd/g1yVDc4C7Zd5Rk+
	00uCiQOvr3xozZb/CKVvw1u/kSZ82jkPWT670XgmYrKvV83n1NjFfHiaTNuEXpdTxXF7p4yUpApv6
	XdCRxHHRlf95qXlKjcTiF1FabszafnCn3r851n1TWH44b5/0j9hKskB1UkxROzPwE8y9Bmgjtju67
	3gcEn/Uh0VkE5mjEnHDEj1lCbCNpc+xxQM/ljtkLSiJ6jBfiQstUyEp6Wz2dWKhsCRxy6aKneA1dH
	+PGPZvUy6CxDdq4+c0oP8IGKrC8fwzJjWEO1ujg5MhauoRgOFpOWYrAslzqpA4hUh0gACY/w3tTq+
	KT9vnLnWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3Ey-00071q-NZ; Mon, 25 May 2020 02:53:24 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3Ev-00071L-4X
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 02:53:22 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id DA4E2155D;
 Mon, 25 May 2020 10:53:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.66] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3328T139697233852160S1590375196653804_; 
 Mon, 25 May 2020 10:53:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2bb26b680a4d0907c2e4cfac22aeb336>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH 3/3] doc: rockchip: Document eMMC program steps
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
 <20200524173213.201123-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9d3497a8-10b6-8968-0a80-29bdfa3837cd@rock-chips.com>
Date: Mon, 25 May 2020 10:53:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200524173213.201123-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_195321_388708_31FE0DA1 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.196 listed in wl.mailspike.net]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8yNSDkuIrljYgxOjMyLCBKYWdhbiBUZWtpIHdyb3RlOgo+IERvY3VtZW50IGVN
TUMgcGFydGl0aW9uIGNyZWF0aW9uIGFuZCBwcm9ncmFtIHN0ZXBzIGZvcgo+IHJvY2tjaGlwIHBs
YXRmb3Jtcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1
dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlw
cy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIGRvYy9ib2FyZC9yb2NrY2hpcC9yb2Nr
Y2hpcC5yc3QgfCAzMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdCBiL2RvYy9ib2FyZC9yb2NrY2hpcC9y
b2NrY2hpcC5yc3QKPiBpbmRleCBjZDljOGQ2ZGM0Li4xZmFhNjc1YWE4IDEwMDY0NAo+IC0tLSBh
L2RvYy9ib2FyZC9yb2NrY2hpcC9yb2NrY2hpcC5yc3QKPiArKysgYi9kb2MvYm9hcmQvcm9ja2No
aXAvcm9ja2NoaXAucnN0Cj4gQEAgLTExNywxNCArMTE3LDQyIEBAIFRvIHdyaXRlIGFuIGltYWdl
IHRoYXQgYm9vdHMgZnJvbSBhbiBTRCBjYXJkIChhc3N1bWVkIHRvIGJlIC9kZXYvc2RhKTo6Cj4g
ICAgICAgICAgIHN1ZG8gZGQgaWY9dS1ib290LXJvY2tjaGlwLmJpbiBvZj0vZGV2L3NkYSBzZWVr
PTY0Cj4gICAgICAgICAgIHN5bmMKPiAgIAo+ICtlTU1DCj4gK15eXl4KPiArCj4gK2VNTUMgZmxh
c2ggd291bGQgcHJvYmUgb24gbW1jMCBpbiBtb3N0IG9mIHRoZSByb2NrY2hpcCBwbGF0Zm9ybXMu
Cj4gKwo+ICtDcmVhdGUgR1BUIHBhcnRpdGlvbiBsYXlvdXQgYXMgZGVmaW5lZCBpbiBjb25maWd1
cmF0aW9uczo6Cj4gKwo+ICsgICAgICAgIG1tYyBkZXYgMAo+ICsgICAgICAgIGdwdCB3cml0ZSBt
bWMgMCAkcGFydGl0aW9ucwo+ICsKPiArQ29ubmVjdCB0aGUgVVNCLU9URyBjYWJsZSBiZXR3ZWVu
IGhvc3QgYW5kIHRhcmdldCBkZXZpY2UuCj4gKwo+ICtMYXVuY2ggZmFzdGJvb3QgYXQgdGFyZ2V0
OjoKPiArCj4gKyAgICAgICAgZmFzdGJvb3QgMAo+ICsKPiArVXBvbiBzdWNjZXNzZnVsIGdhZGdl
dCBjb25uZWN0aW9uLGhvc3Qgc2hvdyB0aGUgVVNCIGRldmljZSBsaWtlOjoKPiArCj4gKyAgICAg
ICAgbHN1c2IKPiArICAgICAgICBCdXMgMDAxIERldmljZSAwMjA6IElEIDIyMDc6MzMwYyBGdXpo
b3UgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ29tcGFueSBSSzMzOTkgaW4gTWFzayBST00gbW9kZQo+
ICsKPiArUHJvZ3JhbSB0aGUgZmxhc2g6Ogo+ICsKPiArICAgICAgICBzdWRvIGZhc3Rib290IC1p
IDB4MjIwNyBmbGFzaCBsb2FkZXIxIGlkYmxvYWRlci5pbWcKPiArICAgICAgICBzdWRvIGZhc3Ri
b290IC1pIDB4MjIwNyBmbGFzaCBsb2FkZXIyIHUtYm9vdC5pdGIKPiArCj4gK05vdGU6IGZvciBy
b2NrY2hpcCAzMi1iaXQgcGxhdGZvcm1zIHRoZSBVLUJvb3QgcHJvcGVyIGltYWdlCj4gK2lzIHUt
Ym9vdC1kdGIuaW1nCj4gKwo+ICAgVE9ETwo+ICAgLS0tLQo+ICAgCj4gICAtIEFkZCByb2NrY2hp
cCBpZGJsb2FkZXIgaW1hZ2UgYnVpbGRpbmcKPiAgIC0gQWRkIHJvY2tjaGlwIFRQTCBpbWFnZSBi
dWlsZGluZwo+ICAgLSBEb2N1bWVudCBTUEkgZmxhc2ggYm9vdAo+IC0tIERlc2NyaWJlIHN0ZXBz
IGZvciBlTU1DIGZsYXNoaW5nCj4gICAtIEFkZCBtaXNzaW5nIFNvQydzIHdpdGggaXQgYm9hcmRz
IGxpc3QKPiAgIAo+ICAgLi4gSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+
Cj4gLS4uIEZyaSBKYW4gMTAgMDA6MDg6NDAgSVNUIDIwMjAKPiArLi4gU3VuZGF5IDI0IE1heSAy
MDIwIDEwOjA4OjQxIFBNIElTVAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
