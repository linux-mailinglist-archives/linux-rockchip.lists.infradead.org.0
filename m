Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385D11E8172
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 17:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EQ0G9an5vxR5zd7DPbmzoJr4t0Petx26i1fvQ7Uni9A=; b=gwzfxABhxMNAXkv2jme07nlGe
	Q6Zp/br/lZU3OvpOwKLakflAGd7qavbez92YLBimLCDKtKs/76q7kUhEdKbFGA1Js37NUVoULOxRY
	ZpOhQYzItuUrzONh6vCgDMYjpukiuIFg5CuE8ydtnHwnn+1k31Hedq+k0118C1PMJqc3E3cxDo4cj
	65RVFVX6JgimrEPDw5BJYPhwSbZfLdvBQKsoz271lNY0q50BTO0VhJayUqKrVZOd+3+MbbDtVZ84B
	QzQCtkbLwosP0/z4TtHN4LKt6psnVcnYU9SqAhtllCk9ArjBUS/WDgOm4UFlx+kWc/s5xk7qeBqg/
	ae7BbNcyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegiC-0002mo-1n; Fri, 29 May 2020 15:14:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeghw-0002dm-0S; Fri, 29 May 2020 15:14:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 3E3602A3AAC
Subject: Re: [PATCH v4 02/11] thermal: Store thermal mode in a dedicated enum
To: Guenter Roeck <linux@roeck-us.net>
References: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
 <20200528192051.28034-3-andrzej.p@collabora.com>
 <20200529144821.GA93994@roeck-us.net>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <e48e5948-51f0-7ce7-265b-d432ea058b7e@collabora.com>
Date: Fri, 29 May 2020 17:13:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529144821.GA93994@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_081404_181261_7E78D85F 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgR3VlbnRlciwKClcgZG5pdSAyOS4wNS4yMDIwIG/CoDE2OjQ4LCBHdWVudGVyIFJvZWNrIHBp
c3plOgo+IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDA5OjIwOjQyUE0gKzAyMDAsIEFuZHJ6ZWog
UGlldHJhc2lld2ljeiB3cm90ZToKPj4gUHJlcGFyZSBmb3Igc3RvcmluZyBtb2RlIGluIHN0cnVj
dCB0aGVybWFsX3pvbmVfZGV2aWNlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBpZXRy
YXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2Fj
cGkvdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgICAgfCAyNyArKysrKysrKystLS0tLS0t
LS0tCj4+ICAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYWNlcmhkZi5jICAgICAgICAgICAgICAgIHwg
IDggKysrKy0tCj4+ICAgLi4uL2ludGVsL2ludDM0MHhfdGhlcm1hbC9pbnQzNDAwX3RoZXJtYWwu
YyAgIHwgMTggKysrKystLS0tLS0tLQo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9u
cygrKSwgMjggZGVsZXRpb25zKC0pCgo8c25pcD4KCj4+IEBAIC01NDQsMjcgKzU0MywyNSBAQCBz
dGF0aWMgaW50IHRoZXJtYWxfc2V0X21vZGUoc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKnRo
ZXJtYWwsCj4+ICAgCQkJCWVudW0gdGhlcm1hbF9kZXZpY2VfbW9kZSBtb2RlKQo+PiAgIHsKPj4g
ICAJc3RydWN0IGFjcGlfdGhlcm1hbCAqdHogPSB0aGVybWFsLT5kZXZkYXRhOwo+PiAtCWludCBl
bmFibGU7Cj4+ICAgCj4+ICAgCWlmICghdHopCj4+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPj4gICAK
Pj4gKwlpZiAobW9kZSAhPSBUSEVSTUFMX0RFVklDRV9ESVNBQkxFRCAmJgo+PiArCSAgICBtb2Rl
ICE9IFRIRVJNQUxfREVWSUNFX0VOQUJMRUQpCj4+ICsJCXJldHVybiAtRUlOVkFMOwo+IAo+IFBl
cnNvbmFsbHkgSSBmaW5kIHRoaXMgY2hlY2sgdW5uZWNlc3Nhcnk6IFRoZSBlbnVtIGhhcyBubyBv
dGhlciB2YWx1ZXMsCj4gYW5kIGl0IGlzIHZlcmlmeWFibGUgdGhhdCB0aGUgY2FsbGVycyBwcm92
aWRlIHRoZSBlbnVtIGFuZCBub3Qgc29tZSBvdGhlcgo+IHZhbHVlLgoKSXQgaXMgZ2V0dGluZyBy
ZW1vdmVkIGluIFBBVENIIDEwLzExLgoKCj4+ICsJaWYgKG1vZGUgIT0gVEhFUk1BTF9ERVZJQ0Vf
RU5BQkxFRCAmJgo+PiArCSAgICBtb2RlICE9IFRIRVJNQUxfREVWSUNFX0RJU0FCTEVEKQo+PiAg
IAkJcmV0dXJuIC1FSU5WQUw7Cj4gCj4gU2FtZSBhcyBhYm92ZS4KCmRpdHRvLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
