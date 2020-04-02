Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C888B19C162
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eZ67NYcaGagdgbv+thmWa4IRMb4ZcWJiQd0bQs0vbcE=; b=ps2phSIYvcRiqjR/+FOocZP+V
	iji00dN2mf8JtsRpfymsFWbRilzMh3TPCpjM1NYnPYbpgF3sbe6G0LjhZsQTLTKJmANcWYQ3FvWhH
	2OJdjcRa3nQL/DzwAJGWMoj2RBAPbBGIIGH/aG9Xdqzch8FbUyUWC8PxLfumVgufNChMyNbQHC0uN
	Iy42rrqGUv6Ty9+B5XiZynrG6gVGi6FfG/XF8NbZcqH3Sw1u9ryAnY5C0vBFplKApnRIatCsEapnf
	XPtTVULXLXAM7my1X6Qw55fO695/p+tRR1RQiadSXQbe9OMgRs/NyWsPVScpfs2oy/RQe4cuGXKEe
	0rPJ1KhNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzFm-0001Ng-PD; Thu, 02 Apr 2020 12:47:26 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzFj-0001N2-E8
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:47:25 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 451AFB76;
 Thu,  2 Apr 2020 20:47:15 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.111] (unknown [112.49.233.3])
 by smtp.263.net (postfix) whith ESMTP id
 P30132T140621213841152S1585831632726994_; 
 Thu, 02 Apr 2020 20:47:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6504d1493bff3f586957c4616930766c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.3
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 1/5] clk: rk3399: Set empty for vopl assigned-clocks
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <162b1b57-cce7-de65-54f2-423877492f3d@rock-chips.com>
Date: Thu, 2 Apr 2020 20:47:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402114125.2501-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_054724_153542_594FF7B4 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yIOS4i+WNiDc6NDEsIEphZ2FuIFRla2kgd3JvdGU6Cj4gRHVyaW5nIHZpZGNv
bnNvbGUgcHJvYmUsIHRoZSBkZXZpY2UgcHJvYmUgd2lsbCB0cnkgdG8KPiBjaGVjayB3aGV0aGVy
IHRoZSBhc3NpZ25lZCBjbG9ja3Mgb24gdGhhdCB2aWRlbyBjb25zb2xlCj4gbm9kZSBpcyBpbml0
aWFsaXplZCBvciBub3Q/IGFuZCByZXR1cm4gYW4gZXJyb3IgaWYgbm90Lgo+Cj4gQnV0LCB1bmxp
a2UgTGludXggVS1Cb290IHdvbid0IHJlcXVpcmUgdG8gaGFuZGxlIHRoZXNlCj4gdm9wbCBhc3Np
Z25lZC1jbG9ja3Mgc2luY2UgY29yZSBjbG9ja3MgYXJlIGVub3VnaCB0bwo+IGhhbmRsZSB0aGUg
dmlkZW8gb3V0IHRvIHByb2Nlc3MuCj4KPiBTbywgbWFyayB0aGVtIGFzIGVtcHR5IGluIHNldF9y
YXRlIHRvIHNhdGlzZnkgY2xrX3NldF9kZWZhdWx0cwo+IHNvLXRoYXQgcHJvYmUgaGFwcGVuZWQg
cHJvcGVybHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4KCgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1j
aGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiBDaGFuZ2VzIGZvciB2MzoKPiAtIG5l
dyBwYXRjaAo+Cj4gICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgfCA3ICsrKysr
KysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGtfcmszMzk5LmMKPiBpbmRleCA4NjViODBjYzBmLi4xZjYyMzc2NTk1IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2Nsa19yazMzOTkuYwo+IEBAIC05OTQsNiArOTk0LDEzIEBAIHN0YXRpYyB1bG9uZyBy
azMzOTlfY2xrX3NldF9yYXRlKHN0cnVjdCBjbGsgKmNsaywgdWxvbmcgcmF0ZSkKPiAgIAljYXNl
IERDTEtfVk9QMToKPiAgIAkJcmV0ID0gcmszMzk5X3ZvcF9zZXRfY2xrKHByaXYtPmNydSwgY2xr
LT5pZCwgcmF0ZSk7Cj4gICAJCWJyZWFrOwo+ICsJY2FzZSBBQ0xLX1ZPUDE6Cj4gKwljYXNlIEhD
TEtfVk9QMToKPiArCQkvKioKPiArCQkgKiBhc3NpZ25lZC1jbG9ja3MgaGFuZGxpbmcgd29uJ3Qg
cmVxdWlyZSBmb3Igdm9wbCwgc28KPiArCQkgKiByZXR1cm4gMCB0byBzYXRpc2Z5IGNsa19zZXRf
ZGVmYXVsdHMgZHVyaW5nIGRldmljZSBwcm9iZS4KPiArCQkgKi8KPiArCQlyZXR1cm4gMDsKPiAg
IAljYXNlIFNDTEtfRERSQ0xLOgo+ICAgCQlyZXQgPSByazMzOTlfZGRyX3NldF9jbGsocHJpdi0+
Y3J1LCByYXRlKTsKPiAgIAkJYnJlYWs7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
