Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 701766A956
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UtTHizdemAeTkSGJbxiISqc1J1lPfVMnGrdfZlotFyM=; b=LaZmA6WGFn9BKh2GlCVYDBgTm
	8WUtptFthkNfjh/8kMVS3ys1Yy9YUQCAg2nyPLVSsfy3J5uMsYdidQWfbJUu1HuqdPg167fIWaSLp
	RQ9ksFknJome8ZeNV9PakLDeL3oRYMv4frSTsJWbhHg8Ff05wschIAIZZ1kZW2PZjYhaO0FOt4wns
	JXokopRb4EQumUOnZyXaaVirhxg/shcflncgSIXPavqsIRgFHQuEtydqfOUvguhYrntj2o3BtSekg
	EcW/ZlTCJFVU0ivfBJ18cQVxQvdQ4bh3xlSkYhIjGlINItrq28lmfG91lUMzp8kWPXpswfPu0mgJ8
	DhUhQNvAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNIH-0001zR-DL; Tue, 16 Jul 2019 13:14:57 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNI9-0001yp-QI
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:14:51 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id DAD4339A;
 Tue, 16 Jul 2019 21:14:47 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P29801T140087507535616S1563282884220690_; 
 Tue, 16 Jul 2019 21:14:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7be9d8fb678080752ac1bfaeac4e2c45>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 32/57] ram: rk3399: Don't disable dfi dram clk for
 lpddr4, rank 1
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-33-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <64095b7d-e517-c92a-cdda-fd832f3ac1d6@rock-chips.com>
Date: Tue, 16 Jul 2019 21:14:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-33-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061450_058993_A191C8F6 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFRoZSBoYXJkd2Fy
ZSBmb3IgTFBERFI0IHdpdGgKPiAtIENMSzBQL04gY29ubmVjdCB0byBsb3dlciAxNi1iaXRzCj4g
LSBDTEsxUC9OIGNvbm5lY3QgdG8gaGlnaGVyIDE2LWJpdHMKPgo+IGFuZCB1c3VhbGx5IGRmaSBk
cmFtIGNsayBpcyBjb25maWd1cmVkIHZpYSBDTEsxUC9OLCBzbwo+IGRpc2FibGluZyBkZmkgZHJh
bSBjbGsgd2lsbCBkaXNhYmxlIHRoZSBDTEsxUC9OIGFzIHdlbGwuCj4KPiBTbywgYWRkIHBhdGNo
IHRvIG5vdCB0byBkaXNhYmxlIGRmaSBkcmFtIGNsayBmb3IgbHBkZHI0LAo+IHdpdGggcmFuayAx
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJl
dmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtz
LAogwqAtIEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTku
YyB8IDE0ICsrKysrKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9z
ZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5k
ZXggMTA1MGNiZGIwNy4uMzU5YWIwYjgyNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2Nr
Y2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jCj4gQEAgLTEyMjUsOCArMTIyNSwxOCBAQCBzdGF0aWMgdm9pZCBkcmFtX2FsbF9jb25m
aWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAgIAkJd3JpdGVsKG5vY190aW1pbmctPmRkcm1v
ZGUuZDMyLAo+ICAgCQkgICAgICAgJmRkcl9tc2NoX3JlZ3MtPmRkcm1vZGUpOwo+ICAgCj4gLQkJ
LyogcmFuayAxIG1lbW9yeSBjbG9jayBkaXNhYmxlIChkZmlfZHJhbV9jbGtfZGlzYWJsZSA9IDEp
ICovCj4gLQkJaWYgKHBhcmFtcy0+Y2hbY2hhbm5lbF0uY2FwX2luZm8ucmFuayA9PSAxKQo+ICsJ
CS8qKgo+ICsJCSAqIHJhbmsgMSBtZW1vcnkgY2xvY2sgZGlzYWJsZSAoZGZpX2RyYW1fY2xrX2Rp
c2FibGUgPSAxKQo+ICsJCSAqCj4gKwkJICogVGhlIGhhcmR3YXJlIGZvciBMUEREUjQgd2l0aAo+
ICsJCSAqIC0gQ0xLMFAvTiBjb25uZWN0IHRvIGxvd2VyIDE2LWJpdHMKPiArCQkgKiAtIENMSzFQ
L04gY29ubmVjdCB0byBoaWdoZXIgMTYtYml0cwo+ICsJCSAqCj4gKwkJICogZGZpIGRyYW0gY2xr
IGlzIGNvbmZpZ3VyZWQgdmlhIENMSzFQL04sIHNvIGRpc2FibGluZwo+ICsJCSAqIGRmaSBkcmFt
IGNsayB3aWxsIGRpc2FibGUgdGhlIENMSzFQL04gYXMgd2VsbCBmb3IgbHBkZHI0Lgo+ICsJCSAq
Lwo+ICsJCWlmIChwYXJhbXMtPmNoW2NoYW5uZWxdLmNhcF9pbmZvLnJhbmsgPT0gMSAmJgo+ICsJ
CSAgICBwYXJhbXMtPmJhc2UuZHJhbXR5cGUgIT0gTFBERFI0KQo+ICAgCQkJc2V0Yml0c19sZTMy
KCZkcmFtLT5jaGFuW2NoYW5uZWxdLnBjdGwtPmRlbmFsaV9jdGxbMjc2XSwKPiAgIAkJCQkgICAg
IDEgPDwgMTcpOwo+ICAgCX0KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
