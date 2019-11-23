Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A90107ECC
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 15:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PYeiUvHL1OgB80qP6Pcu04L5dJTlszu7p8CoHZJYZf0=; b=m22pB3Q8uEUjZlwpAyzlMuc6d
	Q5ngeFPY7oGPDJ8n0TABA6SXRpnRx5bikH99vMK8xCVXlNEKchDXoDscv++2izwUrsh6+8MQDOM0L
	nJH8ADx3fZ5Txv/aWECrdwf/Rm9pcZZugW+1MsO4SiuuPU94AgqmIqcHc6ehE16xRYpn+wC+5lJLM
	ewPpsw8aeChhMa8lffvT2rl6S61VGSXJWm6F26mw9Yt7WOO49l3kLNIelN597VUV+C4XL8v4yEB0b
	A7ZnXBTSdGG02nkUM60/rpl0vqbJiPi87TY1y0fQEZp/VHOV36C7YyyI9CxFT3BMEmy4Q4YV3WA0O
	aHXBxsdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWIY-0003m4-T8; Sat, 23 Nov 2019 14:22:06 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWIU-0003jz-QQ
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 14:22:04 +0000
Received: from localhost (unknown [192.168.167.209])
 by regular1.263xmail.com (Postfix) with ESMTP id 92CF22D6;
 Sat, 23 Nov 2019 22:22:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P5043T140415648900864S1574518914401815_; 
 Sat, 23 Nov 2019 22:22:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <838dcb28f35c9d8d9401bdac3c580100>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.214.198
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 08/10] gadget: rockchip: Add rk3399
 USB_GADGET_PRODUCT_NUM
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-9-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e0f58be6-d22d-6d07-dd39-c3bae0c4c5c7@rock-chips.com>
Date: Sat, 23 Nov 2019 22:21:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-9-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062203_122048_769B514D 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgMHgzMzBj
IGZvciByazMzOTkgZ2FkZ2V0IHByb2R1Y3QgbnVtYmVyLgo+Cj4gVGVzdGVkLWJ5OiBMZXZpbiBE
dSA8ZGp3QHQtY2hpcC5jb20uY24+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5A
YW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy91c2Iv
Z2FkZ2V0L0tjb25maWcgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC9LY29uZmlnIGIvZHJpdmVycy91c2Iv
Z2FkZ2V0L0tjb25maWcKPiBpbmRleCAyZGE4YjQwZTA1Li41OGNhODJkNGRlIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvdXNiL2dhZGdldC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0
L0tjb25maWcKPiBAQCAtNjIsNiArNjIsNyBAQCBjb25maWcgVVNCX0dBREdFVF9QUk9EVUNUX05V
TQo+ICAgCWRlZmF1bHQgMHgzMTBjIGlmIFJPQ0tDSElQX1JLMzEyOAo+ICAgCWRlZmF1bHQgMHgz
MjBhIGlmIFJPQ0tDSElQX1JLMzIyOSB8fCBST0NLQ0hJUF9SSzMyODgKPiAgIAlkZWZhdWx0IDB4
MzMwYSBpZiBST0NLQ0hJUF9SSzMzMjgKPiArCWRlZmF1bHQgMHgzMzBjIGlmIFJPQ0tDSElQX1JL
MzM5OQo+ICAgCWRlZmF1bHQgMHgwCj4gICAJaGVscAo+ICAgCSAgUHJvZHVjdCBJRCBvZiB0aGUg
VVNCIGRldmljZSBlbXVsYXRlZCwgcmVwb3J0ZWQgdG8gdGhlIGhvc3QgZGV2aWNlLgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
