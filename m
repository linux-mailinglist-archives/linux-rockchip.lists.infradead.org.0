Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B101D4370
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M+9sh1mtrOcdD9f4aKB23SZ0CANt2Ga31131X2SQIzQ=; b=j1N1hl5pa89vK6SXEVmJtlV0Z
	EE91ZdWkWabM0MD7P3Rb4FFLBswPNBSDX0iBk0n0/vtWF2ZwhmgrkYl92uspIIXEwpTmYDOAfkShD
	sFVGIruy7oiUBMnxJlm9jNHvz/rVXHp09g+E2N7AjoGKXYTJ7Vzc3MSaH2SlhZvNY6tgreI3NBgan
	FfKUvBXcO2I7vcCSocAa+Mxh0Lk6DjqzNnvqiV1dmB+/t3YmZsnPW2kAeooMUzIa45bN2B9OibeDs
	XkUIoJmH5k/dD0fDOx9JgoudYyFC5sHKYNrsrt7Uqj+poBzXKyudtDTp6qDxX2I5B8EnS/lSL+ZOp
	rNHLeQ66A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZPtC-0007Ir-OD; Fri, 15 May 2020 02:15:54 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZPtA-0007Hc-BN
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:15:53 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 3EF655DF;
 Fri, 15 May 2020 10:15:46 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P33526T140426092734208S1589508933532524_; 
 Fri, 15 May 2020 10:15:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f54f8faa60d2c3fc0d0e6491293d2c9d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 02/16] clk: rk3399: Set empty for TCPHY assigned-clocks
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071344.5430-3-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <44dd1187-6a74-ba67-fa78-c34501152867@rock-chips.com>
Date: Fri, 15 May 2020 10:15:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071344.5430-3-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_191552_609083_AF4E4B2F 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjEzLCBGcmFuayBXYW5nIHdyb3RlOgo+IEZyb206IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+Cj4gRHVlIHRvIHY1LjctcmMxIHN5
bmMgdGhlIFNEIGNvbnRyb2xsZXIgbm9kZXMgaW4gcmszMzk5LmR0c2kKPiBoYXZlIFNDTEtfVVBI
WTBfVENQRENPUkUsIFNDTEtfVVBIWTFfVENQRENPUkUgYXNzaWduZWQtY2xvY2tzCj4gd2hpY2gg
YXJlIHVzdWFsbHkgcmVxdWlyZWQgZm9yIExpbnV4IGFuZCBkb24ndCByZXF1aXJlIHRvCj4gaGFu
ZGxlIHRoZW0gaW4gVS1Cb290Lgo+Cj4gICAgYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgU0NMS19V
UEhZMF9UQ1BEQ09SRT47Cj4gICAgYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgU0NMS19VUEhZMV9U
Q1BEQ09SRT47Cj4KPiBTbywgbWFyayB0aGVtIGFzIGVtcHR5IGluIGNsb2NrIG90aGVyd2lzZSBk
ZXZpY2UgcHJvYmUgb24KPiB0aG9zZSB0eXBlYyBwaHkgZHJpdmVyIHdvdWxkIGZhaWwuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KUmV2
aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3Ms
Ci0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYyB8IDIg
KysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGtfcmszMzk5LmMKPiBpbmRleCBiNTNmMmY5ODRlLi45OGZjNmEzMjY3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2Nsa19yazMzOTkuYwo+IEBAIC05OTcsNiArOTk3LDggQEAgc3RhdGljIHVsb25nIHJr
MzM5OV9jbGtfc2V0X3JhdGUoc3RydWN0IGNsayAqY2xrLCB1bG9uZyByYXRlKQo+ICAgCWNhc2Ug
QUNMS19WT1AxOgo+ICAgCWNhc2UgSENMS19WT1AxOgo+ICAgCWNhc2UgSENMS19TRDoKPiArCWNh
c2UgU0NMS19VUEhZMF9UQ1BEQ09SRToKPiArCWNhc2UgU0NMS19VUEhZMV9UQ1BEQ09SRToKPiAg
IAkJLyoqCj4gICAJCSAqIGFzc2lnbmVkLWNsb2NrcyBoYW5kbGluZyB3b24ndCByZXF1aXJlIGZv
ciB2b3BsLCBzbwo+ICAgCQkgKiByZXR1cm4gMCB0byBzYXRpc2Z5IGNsa19zZXRfZGVmYXVsdHMg
ZHVyaW5nIGRldmljZSBwcm9iZS4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
