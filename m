Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F24107EC8
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 15:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1c+W3jUNxnYvK6rh53ygpWB2KcO6Yxernn69Ts7FWh4=; b=N+XFl0iACsA8gHyX9TOiJROyX
	V/Tl5CptvQqXFzrQgFKaQJmNsesZUJl/Qo3t1aD813h61JWuZEQoo9b1/nuEb05fVUSlKp+9sxEPa
	WIFT30Ez7B/36KPHemjBU0Xh/977i2Aq1KPdMp8oy1K+/fiV8rgH/g1PG3E3zWPqL1QNDNeI8rSs5
	v8jA8Uf+24W5BTpp3VE2QUk6tdLWbnrPN+xyz8y9T+gYG4J0gZHkcpsGk2cMP3KYVpXJzvGbW+s7r
	KHXREYgq1Z0BxdAgIJ4BGgGHVrU+8J/kej83mVcc+nUKVht6NRfM8UlhQVJU3uChoFULmctbGHKVe
	nnKSm127g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWHg-0003al-9G; Sat, 23 Nov 2019 14:21:12 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWHd-0003Za-Ge
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 14:21:11 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id C080C2D6;
 Sat, 23 Nov 2019 22:21:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P9522T140270110754560S1574518863248526_; 
 Sat, 23 Nov 2019 22:21:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <499ea5df7bdd8cc649e439a272b5e7e7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.214.198
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 04/10] gadget: rockchip: Add rk3128
 USB_GADGET_PRODUCT_NUM
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <934af648-3837-6817-d4b3-17acdc1284f4@rock-chips.com>
Date: Sat, 23 Nov 2019 22:21:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062109_831424_22DF3585 
X-CRM114-Status: GOOD (  10.99  )
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

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgMHgzMTBj
IGZvciByazMxMjggZ2FkZ2V0IHByb2R1Y3QgbnVtYmVyLgo+Cj4gVGVzdGVkLWJ5OiBMZXZpbiBE
dSA8ZGp3QHQtY2hpcC5jb20uY24+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5A
YW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy91c2Iv
Z2FkZ2V0L0tjb25maWcgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC9LY29uZmlnIGIvZHJpdmVycy91c2Iv
Z2FkZ2V0L0tjb25maWcKPiBpbmRleCBlMTIwYjQ4YjMzLi4yZGE4YjQwZTA1IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvdXNiL2dhZGdldC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0
L0tjb25maWcKPiBAQCAtNTksNiArNTksNyBAQCBjb25maWcgVVNCX0dBREdFVF9QUk9EVUNUX05V
TQo+ICAgCWhleCAiUHJvZHVjdCBJRCBvZiB0aGUgVVNCIGRldmljZSIKPiAgIAlkZWZhdWx0IDB4
MTAxMCBpZiBBUkNIX1NVTlhJCj4gICAJZGVmYXVsdCAweDMxMGEgaWYgUk9DS0NISVBfUkszMDM2
Cj4gKwlkZWZhdWx0IDB4MzEwYyBpZiBST0NLQ0hJUF9SSzMxMjgKPiAgIAlkZWZhdWx0IDB4MzIw
YSBpZiBST0NLQ0hJUF9SSzMyMjkgfHwgUk9DS0NISVBfUkszMjg4Cj4gICAJZGVmYXVsdCAweDMz
MGEgaWYgUk9DS0NISVBfUkszMzI4Cj4gICAJZGVmYXVsdCAweDAKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
