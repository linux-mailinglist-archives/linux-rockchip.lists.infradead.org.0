Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635481290F0
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Dec 2019 03:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GW/Kwck45ORrZU01DkItfn8C4K87dUWjkLD4Fj7WluQ=; b=IaNJCrlQczruKVfIH9ZmB2pz5
	VIoR19HNuJwNtakdl/rb8N3H74JEb19F25+TFNPdUp/I8n7rMJxVB15C0tyitfrs98Ja5fe9DdswL
	33oX02a4E+YuVx+ZzyDO6MXluiZUmBVQFFFVqmlxiA6zdHFnZDL7W5g4MypXY8A3JmNGWtzYHlYTF
	mVavgdhh3xD5eqrmq6hHOn0Bea4c7V53YLH8DhuiLq6csjqOQTD8rJQRyHi07UAhI3sN5YXdpUA2Z
	5kcJI5qrSFpcnlp7v715bT2kwj1VJjSi4u6J6XmYYp1hkDcPboPIAdHWsmDvIyk1hhEar7QgLNzyY
	b40uZ01Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijDYZ-0003Ah-DE; Mon, 23 Dec 2019 02:34:51 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijDYX-0003AK-48
 for linux-rockchip@lists.infradead.org; Mon, 23 Dec 2019 02:34:50 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id CE3461020;
 Mon, 23 Dec 2019 10:34:44 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10935T140244619876096S1577068484517456_; 
 Mon, 23 Dec 2019 10:34:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3a77f17dec9629f372461ed796395926>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
Date: Mon, 23 Dec 2019 10:34:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_183449_354301_5AF73F55 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SmFnYW4sCgoKT24gMjAxOS8xMi8yMSDkuIvljYgzOjU0LCBKYWdhbiBUZWtpIHdyb3RlOgo+IE1v
c3Qgb2YgdGhlIFNQSSBmbGFzaCBkZXZpY2VzIGluIHJvY2tjaGlwIGFyZSAxNk1pQiBzaXplLgo+
Cj4gU28sIGtlZXBpbmcgVS1Cb290IHByb3BlciBvZmZzZXQgc3RhcnQgZnJvbSAxMjhNaUIgd2l0
aCAxTWlCCj4gc2l6ZSBhbmQgdGhlbiBzdGFydCBlbnYgb2YgOEtpQiB3b3VsZCBiZSBhIGNvbXBh
dGlibGUgbG9jYXRpb24KPiBiZXR3ZWVuIGFsbCB2YXJpYW50cyBvZiBmbGFzaCBzaXplcy4KPgo+
IFRoaXMgcGF0Y2ggYWRkIGVudiBzdGFydCBmcm9tIDB4MTQwMDAgd2l0aCBhIHNpemUgb2YgOEtp
Qi4KCldoYXQncyB0aGUgc3BhY2UgbWFwIGluIFNQSSBmbGFzaCBzdXBwb3NlIHRvIGJlPyBJbmNs
dWRpbmcgCnRwbC9zcGwvdS1ib290Lml0YgoKSSB3b3VsZCBwcmVmZXIgdG8gdXNlIDEyOEtpQi04
S2lCIGFzIHRoZSBlbnYgc3RhcnQgYWRkcmVzcywgd2UnZCBiZXR0ZXIgCnRvIGF2b2lkIHRoZQoK
cmlzayBvZiBvdmVybGFwIGJldHdlZW4gdGhlIGVudiBzcGFjZSBhbmQgdGhlIGZpcm13YXJlIHNw
YWNlLgoKPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlv
bnMuY29tPgo+IC0tLQo+ICAgZW52L0tjb25maWcgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2Vudi9LY29uZmlnIGIvZW52L0tjb25m
aWcKPiBpbmRleCA5NDE2YTcwMDIyLi4xYmIzZTEwNzhlIDEwMDY0NAo+IC0tLSBhL2Vudi9LY29u
ZmlnCj4gKysrIGIvZW52L0tjb25maWcKPiBAQCAtNDg5LDYgKzQ4OSw3IEBAIGNvbmZpZyBFTlZf
T0ZGU0VUCj4gICAJZGVwZW5kcyBvbiBFTlZfSVNfSU5fRUVQUk9NIHx8IEVOVl9JU19JTl9NTUMg
fHwgRU5WX0lTX0lOX05BTkQgfHwgXAo+ICAgCQkgICAgRU5WX0lTX0lOX1NQSV9GTEFTSAo+ICAg
CWRlZmF1bHQgMHgzZjgwMDAgaWYgQVJDSF9ST0NLQ0hJUCAmJiBFTlZfSVNfSU5fTU1DCj4gKwlk
ZWZhdWx0IDB4MTQwMDAwIGlmIEFSQ0hfUk9DS0NISVAgJiYgRU5WX0lTX0lOX1NQSV9GTEFTSAoK
SXMgdGhpcyAweDE0MDAwMCBvciAweDE0MDAwPwoKClRoYW5rcywKCi0gS2V2ZXIKCj4gICAJZGVm
YXVsdCAweDg4MDAwIGlmIEFSQ0hfU1VOWEkKPiAgIAlkZWZhdWx0IDB4RTAwMDAgaWYgQVJDSF9a
WU5RCj4gICAJZGVmYXVsdCAweDFFMDAwMDAgaWYgQVJDSF9aWU5RTVAKPiBAQCAtNTEyLDYgKzUx
Myw3IEBAIGNvbmZpZyBFTlZfU0laRQo+ICAgCWRlZmF1bHQgMHg0MDAwMCBpZiBFTlZfSVNfSU5f
U1BJX0ZMQVNIICYmIEFSQ0hfWllOUU1QCj4gICAJZGVmYXVsdCAweDIwMDAwIGlmIEFSQ0hfU1VO
WEkgfHwgQVJDSF9aWU5RIHx8IEFSQ0hfT01BUDJQTFVTIHx8IEFSQ0hfQVQ5MQo+ICAgCWRlZmF1
bHQgMHg4MDAwIGlmIEFSQ0hfUk9DS0NISVAgJiYgRU5WX0lTX0lOX01NQwo+ICsJZGVmYXVsdCAw
eDIwMDAgaWYgQVJDSF9ST0NLQ0hJUCAmJiBFTlZfSVNfSU5fU1BJX0ZMQVNICj4gICAJZGVmYXVs
dCAweDgwMDAgaWYgQVJDSF9aWU5RTVAgfHwgQVJDSF9WRVJTQUwKPiAgIAlkZWZhdWx0IDB4NDAw
MCBpZiBBUkMKPiAgIAlkZWZhdWx0IDB4MWYwMDAKPiBAQCAtNTIxLDYgKzUyMyw3IEBAIGNvbmZp
ZyBFTlZfU0laRQo+ICAgY29uZmlnIEVOVl9TRUNUX1NJWkUKPiAgIAloZXggIkVudmlyb25tZW50
IFNlY3Rvci1TaXplIgo+ICAgCWRlcGVuZHMgb24gRU5WX0lTX0lOX0ZMQVNIIHx8IEVOVl9JU19J
Tl9TUElfRkxBU0gKPiArCWRlZmF1bHQgMHgyMDAwIGlmIEFSQ0hfUk9DS0NISVAKPiAgIAlkZWZh
dWx0IDB4NDAwMDAgaWYgQVJDSF9aWU5RTVAgfHwgQVJDSF9WRVJTQUwKPiAgIAlkZWZhdWx0IDB4
MjAwMDAgaWYgQVJDSF9aWU5RIHx8IEFSQ0hfT01BUDJQTFVTIHx8IEFSQ0hfQVQ5MQo+ICAgCWhl
bHAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
