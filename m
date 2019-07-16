Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CEB6A95E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ea2WU0a70yUj/5VRCh1wNvWLIrapZIP4eDGcsxuY0cI=; b=SB2hxoNtv/pmO09BCFvrnckRF
	tw0NmcoAP230A49rE9b8/OIvQ19KHE7ENo7MVmjLJ8rvSTc6xwlW05nZ7MuvHW139+PNXrpcWL3CO
	sLhvINmdDigKfwroXUrTojfpJH1e23SmQRl4Fx/hcXE2pKGdKRH1ZXQPzNcYVg2AYTmxa+5/lOr17
	gOx3R2vP1GbsdyWMIqIOWSL78uWqwTJaDoQxmeWP4UJ7QX8H2jlMPxK6H2wIwVAG729X+t3n/mRev
	/1chWiTfba1j3wKuSARBfESdv0hInfBc/6Aby8JQYCH6ASc8CVjGFu3u9QBeEBNXSqFvzOIwCtJH3
	kedJkCoIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNJR-0003Tm-Nb; Tue, 16 Jul 2019 13:16:09 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNJO-0003Sr-3E
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:16:07 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id 036CF43D;
 Tue, 16 Jul 2019 21:16:03 +0800 (CST)
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
 P25752T140261386602240S1563282956255813_; 
 Tue, 16 Jul 2019 21:16:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <838529d4228cfc55089e8f31a94514e1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 37/57] ram: rk3399: Get lpddr4 tsel_rd_en from io
 settings
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-38-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3c55add5-e542-77ee-aabe-60a1e9515e30@rock-chips.com>
Date: Tue, 16 Jul 2019 21:15:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-38-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061606_334343_8716F08A 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEZvciBiYXNlLm9k
dCAxIHRoZSBscGRkcjQgdHNlbF9yZF9lbiB2YWx1ZSBpcyBkZXBlbmRpbmcKPiBvbiBJTyBzZXR0
aW5ncyBvZiByZF9vZHRfZW4uCj4KPiBBZGQgc3VwcG9ydCBmb3IgaXQuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVy
IFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAt
LS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgOCArKysrKystLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMv
cmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggZTBiZTlkMjQ4NS4uOWU0MDg4MDgz
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsr
KyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTY0NSwxMCArNjQ1
LDE0IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hh
biwKPiAgIAkJdHNlbF9ja2NzX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAl9Cj4g
ICAKPiAtCWlmIChwYXJhbXMtPmJhc2Uub2R0ID09IDEpCj4gKwlpZiAocGFyYW1zLT5iYXNlLm9k
dCA9PSAxKSB7Cj4gICAJCXRzZWxfcmRfZW4gPSAxOwo+IC0JZWxzZQo+ICsKPiArCQlpZiAocGFy
YW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkKPiArCQkJdHNlbF9yZF9lbiA9IGlvLT5yZF9v
ZHRfZW47Cj4gKwl9IGVsc2Ugewo+ICAgCQl0c2VsX3JkX2VuID0gMDsKPiArCX0KPiAgIAo+ICAg
CXRzZWxfd3JfZW4gPSAwOwo+ICAgCXRzZWxfaWRsZV9lbiA9IDA7CgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
