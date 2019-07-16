Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C9F6A2FF
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vQlVHWFGaFI+S0WWrCRpPTEtj++d9WogdNeOwvjZHHA=; b=Db3tLYejk9lZI9DbQwo4YVSvK
	IIqcR2ahmDIOIlw7UvtpYrGB9Ivq2sUWJEwL2pyqZNLtJN1SJJZ32EhZulwK5Zz0tqw8nDhF62JM6
	FvyA8gUWgrIrUJ/T9HQouP6RZXPMeJ0rkRQyiZOUdH7pB8HwO5dvrDnOydA1uqnIHEK/q/WGhvsid
	K+syhQ9Dmg5OebgitAYzHU/lOUHIjmoKxVntBC8Xde1PgWyT3Ndz1cKZ9gxxEi6vgN4bGsfh4cvLf
	UonW15gjF52yJVFi0W7KUWmltiTlnSHiij9tDGMk3E4ORK11lHyXyg/R1OwESV6YJD+na1yo/e4/I
	rigpBeXxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHz3-0003VW-Tv; Tue, 16 Jul 2019 07:34:45 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHz0-0003VA-CC
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:34:43 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.183])
 by regular1.263xmail.com (Postfix) with ESMTP id B709820B;
 Tue, 16 Jul 2019 15:34:39 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26452T140053313484544S1563262475441457_; 
 Tue, 16 Jul 2019 15:34:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d9f8af1ad2d81bb336fac2686e64eb06>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 14/15] arm: include: rockchip: Add DDR4 enum
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-15-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <92fd7c55-3b7e-8c9e-95c1-b7f13af3c888@rock-chips.com>
Date: Tue, 16 Jul 2019 15:34:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-15-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003442_637880_D543E8B6 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBERFI0IGVu
dW0gbnVtYmVyIGluIGNvbW1vbiBoZWFkZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtp
IDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hl
biA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlh
bmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGFyY2gvYXJt
L2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggfCAxICsKPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggYi9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gaW5kZXggNTVhYmNkYWU3Ny4uN2FjMjVh
ZjMyNyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3Nk
cmFtX2NvbW1vbi5oCj4gKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9z
ZHJhbV9jb21tb24uaAo+IEBAIC03LDYgKzcsNyBAQAo+ICAgI2RlZmluZSBfQVNNX0FSQ0hfU0RS
QU1fQ09NTU9OX0gKPiAgIAo+ICAgZW51bSB7Cj4gKwlERFI0ID0gMCwKPiAgIAlERFIzID0gMHgz
LAo+ICAgCUxQRERSMiA9IDB4NSwKPiAgIAlMUEREUjMgPSAweDYsCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
