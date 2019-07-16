Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0AD6A97E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EjenZBjRGKPVTOmLQpSv0Wc7HRuyDodVDHLr8gHmCrU=; b=tCRM0PPPYHLDobQEWDJR/zIwH
	sxo4z9Aq+q3w3TFvKgyYLJdvXMwXjr4sJ3Ga3nFTNTEf4quJV7sVso77bjZeX/MigIjsfJ/1X/bXN
	bW9WLR8t2CPjpKW43zXilMFMPbwIo+TMGVX2O9KbiD0LSM3h+bYc/rxQORMwRlQsegEQIrXzeGHte
	Vc/vGF33pUAYxWKbl6KC3JKfYbKgnsAenck8klN/bYkb6Vgtayog83dAIG3RgCG5zeGJQiOHm4U34
	mjDFz5t++UNopMaFC5heTBpW8uDkgwDfBaQOy8OaU8DmQoxnqz2HDjxEwpO7etbQzK7fnUiOxMBDv
	HRD8zLXLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNOr-00063D-LT; Tue, 16 Jul 2019 13:21:45 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNOo-00062P-PH
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:21:44 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.134])
 by regular1.263xmail.com (Postfix) with ESMTP id DD6D433C;
 Tue, 16 Jul 2019 21:21:40 +0800 (CST)
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
 P10510T140412996015872S1563283288551877_; 
 Tue, 16 Jul 2019 21:21:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6786983b0e0f5100e931beb810ce4c71>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 53/57] configs: rockpro64: Enable LPDDR4 support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-54-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <c2d7edbf-5a2b-e4e9-2ce4-aeae9dfd0f53@rock-chips.com>
Date: Tue, 16 Jul 2019 21:21:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-54-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_062143_049254_8B4976F2 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IER1ZSB0byBmb290
LXByaW50IGlzc3Vlcywgd2UgaGF2ZSBMUEREUjQgY29kZSBjYW4gYmUKPiBtYXJrZWQgYXMgQ09O
RklHX1JBTV9SSzMzOTlfTFBERFI0Lgo+Cj4gU28sIGVuYWJsZSBpdCBmb3IgUm9ja3BybzY0IGJv
YXJkLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9u
cy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNv
bT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgY29uZmlncy9yb2NrcHJvNjQtcmszMzk5
X2RlZmNvbmZpZyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBk
aWZmIC0tZ2l0IGEvY29uZmlncy9yb2NrcHJvNjQtcmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mv
cm9ja3BybzY0LXJrMzM5OV9kZWZjb25maWcKPiBpbmRleCBlOGZjN2FlMTQxLi4zOWU2OGFhZDgy
IDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3Mvcm9ja3BybzY0LXJrMzM5OV9kZWZjb25maWcKPiArKysg
Yi9jb25maWdzL3JvY2twcm82NC1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTI4LDYgKzI4LDcgQEAg
Q09ORklHX1NQTF9PRl9DT05UUk9MPXkKPiAgIENPTkZJR19ERUZBVUxUX0RFVklDRV9UUkVFPSJy
azMzOTktcm9ja3BybzY0Igo+ICAgQ09ORklHX09GX1NQTF9SRU1PVkVfUFJPUFM9InBpbmN0cmwt
MCBwaW5jdHJsLW5hbWVzIGNsb2NrLW5hbWVzIGludGVycnVwdC1wYXJlbnQgYXNzaWduZWQtY2xv
Y2tzIGFzc2lnbmVkLWNsb2NrLXJhdGVzIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMiCj4gICBDT05G
SUdfRU5WX0lTX0lOX01NQz15Cj4gK0NPTkZJR19SQU1fUkszMzk5X0xQRERSND15Cj4gICBDT05G
SUdfUk9DS0NISVBfR1BJTz15Cj4gICBDT05GSUdfU1lTX0kyQ19ST0NLQ0hJUD15Cj4gICBDT05G
SUdfTU1DX0RXPXkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
