Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9212F1BC0E1
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 16:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OWT4gobaxJ63KBc0u7AcB1Efr9Rod6N63prGO2FQs+I=; b=TBB5KHftnLJ8fSq3K4pJ63bN9
	HACaTl9diSxVJQUOpeXf/jLZvBd4FQOdrkgRcJ6jBLOKLHNnv1U61b/b8/Mkbs8AnE1GIqRP2vApk
	mqH1qVIMs+MgHK69hqgf3vfvpDiIj9RxJ3Kb1zh41ylnzwyYlmatgbaB7gz9iAoJbQQI6epoVgLjU
	ayd80uc/22M+mU+cm5EfHTPQT6y6u8jK6sz+sgwu59g4qO7OV0yEdpRLXh7tSoTUUVkTOhBVf+dxe
	CEH+mxN8U9Vf8uMI2Uv7WtObXNfgx9E5jEuHUCtfQiRyfhuM07ZbAjQvXr6jYg/+ApofSnX/CH8bM
	F91ZhqdWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQzB-0006c0-T6; Tue, 28 Apr 2020 14:13:21 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQz7-0006aW-Sz
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 14:13:19 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id 3A8DD3A7;
 Tue, 28 Apr 2020 22:13:14 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.110] (unknown [112.49.233.123])
 by smtp.263.net (postfix) whith ESMTP id
 P7185T140143392372480S1588083192672533_; 
 Tue, 28 Apr 2020 22:13:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <428fe75149d86c67981c6ba1aa791246>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.123
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 3/6] clk: rk3399: Set empty for HCLK_SD assigned-clocks
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
 <20200428100019.19155-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <103a67c7-ecff-e902-e363-147ffcc57252@rock-chips.com>
Date: Tue, 28 Apr 2020 22:13:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200428100019.19155-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071318_151219_B780D93A 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yOCDkuIvljYg2OjAwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IER1ZSB0byB2NS43
LXJjMSBzeW5jIHRoZSBTRCBjb250cm9sbGVyIG5vZGVzIGluIHJrMzM5OS5kdHNpCj4gaGF2ZSBI
Q0xLX1NEIGFzc2lnbmVkLWNsb2NrcyB3aGljaCBhcmUgdXN1YWxseSByZXF1aXJlZCBmb3IKPiBM
aW51eCBhbmQgZG9uJ3QgcmVxdWlyZSB0byBoYW5kbGUgdGhlbSBpbiBVLUJvb3QuCj4KPiAgIGFz
c2lnbmVkLWNsb2NrcyA9IDwmY3J1IEhDTEtfU0Q+Owo+Cj4gU28sIG1hcmsgdGhlbSBhcyBlbXB0
eSBpbiBjbG9jayBvdGhlcndpc2UgZGV2aWNlIHByb2JlIG9uCj4gdGhvc2UgU0QgY29udHJvbGxl
cnMgd291bGQgZmFpbC4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgoKClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gQ2hhbmdlcyBmb3IgdjI6Cj4g
LSBub25lCj4KPiAgIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYyB8IDEgKwo+ICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
bGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5
OS5jCj4gaW5kZXggMWY2MjM3NjU5NS4uZDgyMmFjYWNlMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGtfcmszMzk5LmMKPiBAQCAtOTk2LDYgKzk5Niw3IEBAIHN0YXRpYyB1bG9uZyByazMzOTlfY2xr
X3NldF9yYXRlKHN0cnVjdCBjbGsgKmNsaywgdWxvbmcgcmF0ZSkKPiAgIAkJYnJlYWs7Cj4gICAJ
Y2FzZSBBQ0xLX1ZPUDE6Cj4gICAJY2FzZSBIQ0xLX1ZPUDE6Cj4gKwljYXNlIEhDTEtfU0Q6Cj4g
ICAJCS8qKgo+ICAgCQkgKiBhc3NpZ25lZC1jbG9ja3MgaGFuZGxpbmcgd29uJ3QgcmVxdWlyZSBm
b3Igdm9wbCwgc28KPiAgIAkJICogcmV0dXJuIDAgdG8gc2F0aXNmeSBjbGtfc2V0X2RlZmF1bHRz
IGR1cmluZyBkZXZpY2UgcHJvYmUuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
