Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0210E1EDB95
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 05:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rgxq5AGoECLVVjR224Oct05Hck1OU1XV6aRcjNBC6oI=; b=fiPZTq/7XkaNjsHTn+a1i0WZX
	Wk+DahS2+FrfYl7YEBLIgG6PBWjMD10IGHl1kXt63c6jHA/94uRM1DAVFPmu7RIotijh+ugoNaHcb
	B8ZnDuhBZOIkI2tqIfap4BbC3DEht4bd6BlvKGzFJrZFMN1jShfi0WlUdu6/18noQfCbWon6Alp2O
	APr7SYc04iGwtg7SQjMOVEz+qVwSYTuC0GIZTU9C0HcZ57WWk7Y2xNeGZg4p98GIFXOPvbS0zPbvc
	B6PwFP71uMVbl02YnV1/3BqJ3hKL5PeJ2bddhKf+9M062Y5iROZd+THmU5gYKBBaefkbpbRX57ZZB
	Lo10RvimQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggKm-0000jx-Uo; Thu, 04 Jun 2020 03:14:24 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggKk-0000i6-1Y
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 03:14:23 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 7A6777F7;
 Thu,  4 Jun 2020 11:14:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P25393T140142903817984S1591240445327565_; 
 Thu, 04 Jun 2020 11:14:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e04c24b43b9b7257c2ab404ced871dcc>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 1/4] Makefile: Drop to handle rkspi image type
To: Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
 <20200601204213.466120-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <5b699185-38e4-4251-8013-cd4db066370e@rock-chips.com>
Date: Thu, 4 Jun 2020 11:13:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200601204213.466120-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_201422_272150_BE31334F 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.203 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNi8yIOS4iuWNiDQ6NDIsIEphZ2FuIFRla2kgd3JvdGU6Cj4gT24gcm9ja2NoaXAg
cGxhdGZvcm1zLCBTUEkgYm9vdCBpbWFnZSBjcmVhdGlvbiBpcyBub3QKPiBzdHJhaWdodGZvcndh
cmQgbGlrZSBNTUMgYm9vdCBpbWFnZSBjcmVhdGlvbiB3aGVyZSBmb3JtZXIKPiByZXF1aXJlcyB0
byBzcGVjaWZ5IHRwbCwgc3BsIGluIG11bHRpbWFnZSBmb3JtYXQgaW4gbWtpbWFnZSwKPiBhbmQg
bGF0ZXIgc2ltcGx5IGRvIGEgY29uY2F0ZW5hdGUgbWtpbWFnZWQtdHBsIHdpdGggc3BsLgo+Cj4g
T24gdGhpcyBub3RlLCBsZXQgZHJvcCBya3NwaSBpbWFnZSB0eXBlIGNyZWF0aW9uIHZpYSBrYnVp
bGQKPiBhbmQgbGV0IGluZm9ybSB2aWEgcm9ja2NoaXAucnN0Cj4KPiBTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZl
ciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0t
Cj4gICBNYWtlZmlsZSB8IDExICsrLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFr
ZWZpbGUKPiBpbmRleCAzODUxZGQ5ZmEwLi5kYjNiNmI5OTkxIDEwMDY0NAo+IC0tLSBhL01ha2Vm
aWxlCj4gKysrIGIvTWFrZWZpbGUKPiBAQCAtMTQzOCwyMiArMTQzOCwxNSBAQCB1LWJvb3Qtd2l0
aC1zcGwuYmluOiAkKFNQTF9JTUFHRSkgJChTUExfUEFZTE9BRCkgRk9SQ0UKPiAgIAo+ICAgaWZl
cSAoJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkseSkKPiAgIAo+IC0jIHJvY2tjaGlwIGltYWdlIHR5
cGUKPiAtaWZlcSAoJChDT05GSUdfU1BMX1NQSV9MT0FEKSx5KQo+IC1ST0NLQ0hJUF9JTUdfVFlQ
RSA6PSBya3NwaQo+IC1lbHNlCj4gLVJPQ0tDSElQX0lNR19UWVBFIDo9IHJrc2QKPiAtZW5kaWYK
PiAtCj4gICAjIFRQTCArIFNQTAo+ICAgaWZlcSAoJChDT05GSUdfU1BMKSQoQ09ORklHX1RQTCks
eXkpCj4gLU1LSU1BR0VGTEFHU191LWJvb3QtdHBsLXJvY2tjaGlwLmJpbiA9IC1uICQoQ09ORklH
X1NZU19TT0MpIC1UICQoUk9DS0NISVBfSU1HX1RZUEUpCj4gK01LSU1BR0VGTEFHU191LWJvb3Qt
dHBsLXJvY2tjaGlwLmJpbiA9IC1uICQoQ09ORklHX1NZU19TT0MpIC1UIHJrc2QKPiAgIHRwbC91
LWJvb3QtdHBsLXJvY2tjaGlwLmJpbjogdHBsL3UtYm9vdC10cGwuYmluIEZPUkNFCj4gICAJJChj
YWxsIGlmX2NoYW5nZWQsbWtpbWFnZSkKPiAgIGlkYmxvYWRlci5pbWc6IHRwbC91LWJvb3QtdHBs
LXJvY2tjaGlwLmJpbiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hh
bmdlZCxjYXQpCj4gICBlbHNlCj4gLU1LSU1BR0VGTEFHU19pZGJsb2FkZXIuaW1nID0gLW4gJChD
T05GSUdfU1lTX1NPQykgLVQgJChST0NLQ0hJUF9JTUdfVFlQRSkKPiArTUtJTUFHRUZMQUdTX2lk
YmxvYWRlci5pbWcgPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCBya3NkCj4gICBpZGJsb2FkZXIu
aW1nOiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxta2lt
YWdlKQo+ICAgZW5kaWYKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
