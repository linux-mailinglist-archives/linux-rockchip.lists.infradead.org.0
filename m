Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6450D1D43BE
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dJPW/ERLITnZr3rxuaaMk5ZWExvmLUuNO/D0tcBUDe4=; b=NU8oPcTxHp3ylzKTECxYWSmnE
	PG+vpXcKMj1UPhWDY/FMe9QxjAfXXbGKhsNlODzgJQqbqC6k1n+3HPHvIPus5m/9CEwAn22T1hrVu
	5zjZINVKWugtHY48WzNNoK65jsQww/Slmkej0KAH0GzR5P0tdrvgPubIjXHoL/9CyvgNO+rMAgFy3
	87eCc8uQmU6+UYNJX8KJYFu7y1o0XR5S2hmBr/9dlH6Cn4ZSvKQP+u++No0pA63Oyu4LbN3HeFt6D
	hQ/PEXxsPE2fgWvRT6bnGd//14YyPJo0s0quJvDAHb3XM1UHqEHTgGfvSbAYx8jGA7Af4MOgwf7wD
	cAMk10LfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQR3-00038e-RK; Fri, 15 May 2020 02:50:53 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQR0-00037Y-95
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:50:51 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id 78912336;
 Fri, 15 May 2020 10:50:47 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P2955T140479402321664S1589511036138919_; 
 Fri, 15 May 2020 10:50:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6f2e2ae2c074a836b898b3843b5ce551>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: chenjh@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v5_14/16=5d_ARM=3a_dts=3a_rk3399-evb=3a_us?=
 =?UTF-8?B?YjMuMCBob3N0IHN1cHBvcnTjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51eC1y?=
 =?UTF-8?Q?ockchip-bounces+kever=2eyang=3drock-chips=2ecom=40lists=2einfrade?=
 =?UTF-8?B?YWQub3Jn5Luj5Y+R44CR?=
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071710.5651-1-frank.wang@rock-chips.com>
 <20200513071710.5651-5-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <af446dc3-ae6d-27e7-cea7-e0cd3b64b05c@rock-chips.com>
Date: Fri, 15 May 2020 10:50:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071710.5651-5-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195050_554530_811BA919 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [211.150.70.198 listed in wl.mailspike.net]
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
Cc: jianing.ren@rock-chips.com, linux-rockchip@lists.infradead.org,
 marek.belisko@gmail.com, wmc@rock-chips.com, u-boot@lists.denx.de,
 william.wu@rock-chips.com, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjE3LCBGcmFuayBXYW5nIHdyb3RlOgo+IENvbmZpZ3VyZSAn
dGNwaHkxJyBhbmQgJ3VzYmRyZF9kd2MzXzEnIG5vZGVzIHRvIHN1cHBvcnQgVVNCMy4wIGhvc3QK
PiBmb3IgUm9ja2NoaXAgUkszMzk5IEV2YWx1YXRpb24gQm9hcmQuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hpcHMuY29tPgo+IFJldmlld2VkLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZl
ciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0t
Cj4gICBhcmNoL2FybS9kdHMvcmszMzk5LWV2Yi11LWJvb3QuZHRzaSB8IDEzICsrKysrKysrKysr
KysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vZHRzL3JrMzM5OS1ldmItdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5
LWV2Yi11LWJvb3QuZHRzaQo+IGluZGV4IGU1NjU5ZDc5OTkuLjFiZWJlMjU4ZjAgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1ldmItdS1ib290LmR0c2kKPiArKysgYi9hcmNoL2Fy
bS9kdHMvcmszMzk5LWV2Yi11LWJvb3QuZHRzaQo+IEBAIC0yMywzICsyMywxNiBAQAo+ICAgJnJr
ODA4IHsKPiAgIAl1LWJvb3QsZG0tcHJlLXJlbG9jOwo+ICAgfTsKPiArCj4gKyZ0Y3BoeTEgewo+
ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnVzYmRyZDNfMSB7Cj4gKwlzdGF0dXMg
PSAib2theSI7Cj4gK307Cj4gKwo+ICsmdXNiZHJkX2R3YzNfMSB7Cj4gKwlkcl9tb2RlID0gImhv
c3QiOwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9OwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
