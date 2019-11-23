Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118F107ECE
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 15:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uKLfzpksAuweROk2HWYh101MCcVgHr/SYmn6LxwmXek=; b=GAamEKFJo9oAr4ShpXEpBI3H7
	D7c5l8BFvF05wodDHAqv13dbeMq64v5ZlTOyvIZaTWbWbZ2OvvgoMjBvJHq5j7G09oglvYcCpRUBV
	+94STwIv1uq3SQuC+3aBjs1vkg+rZNQvCQRwnPnK6i22dytN6snWYHz3kOgCK3mfRsKffE3el4fJC
	+foEZRCAyPFXg6bdq3vnHXO2G2WEN2beo23OTypt3Z9ZqyvYEvxdH5DEZ1otJm8IFbXwvma/VTVc3
	Yc3obH6UDcT6cWJUAWqiA9KWOBetVRfIACQuI6ONQHL16WRbbC6HAdCyMxSyl8yfwWtRd+d5X4lsd
	BeQ2n3UGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWIp-0003t2-Ch; Sat, 23 Nov 2019 14:22:23 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWIm-0003qq-1w
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 14:22:21 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 4D7CD229;
 Sat, 23 Nov 2019 22:22:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P29210T140217084262144S1574518935182950_; 
 Sat, 23 Nov 2019 22:22:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <514722b3f0cfd964408853c8a51b0807>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.214.198
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 10/10] rock960: Enable USB Gadget
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-11-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e2ba0ce3-c3d5-a2c2-db07-3a114b045513@rock-chips.com>
Date: Sat, 23 Nov 2019 22:22:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-11-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062220_384069_A4C191EA 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUgRFdD
MyBjb3JlLCBnYWRnZXQgZm9yIHJvY2s5NjAgYm9hcmQuCj4KPiBUaGlzIHdvdWxkIGhlbHAgdG8g
dXNlIGZhc3Rib290IGJ5IGRlZmF1bHQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxq
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZl
ci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBjb25maWdz
L3JvY2s5NjAtcmszMzk5X2RlZmNvbmZpZyB8IDIgKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNv
bmZpZyBiL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggOTc5Y2EwZjkz
Yi4uZDBhZDY4NjVjZiAxMDA2NDQKPiAtLS0gYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNv
bmZpZwo+ICsrKyBiL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTU3LDYg
KzU3LDggQEAgQ09ORklHX1VTQl9FVEhFUl9BU0lYODgxNzk9eQo+ICAgQ09ORklHX1VTQl9FVEhF
Ul9NQ1M3ODMwPXkKPiAgIENPTkZJR19VU0JfRVRIRVJfUlRMODE1Mj15Cj4gICBDT05GSUdfVVNC
X0VUSEVSX1NNU0M5NVhYPXkKPiArQ09ORklHX1VTQl9HQURHRVQ9eQo+ICtDT05GSUdfVVNCX0RX
QzM9eQo+ICAgQ09ORklHX1VTRV9USU5ZX1BSSU5URj15Cj4gICBDT05GSUdfU1BMX1RJTllfTUVN
U0VUPXkKPiAgIENPTkZJR19FUlJOT19TVFI9eQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
