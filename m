Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED70F14D56E
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Jan 2020 04:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vWkI/VmE/7/+JDMKirh1zvrUqGkQX0dQ1VjOUsP0tKM=; b=RfH8f+14jyPUHaD+DIFxfcEWI
	BkY9l8SqndhKAn+t2NHXdZ5uQX66cVevGp++m4AIxKR4r8KigseAvRolFUQ7CcM3tsZXrll3H9YNI
	GQl5eZZ3NgbKZSRSJISwxFObmwLWon6rXl7yA53FTaKouQR34u4HP/ptr5UF5Kv/xJPE78/x8sU+G
	jT8AvGxtFQqsP/GGxAxqVhBQ/mG6ANKTdN7bCSo9iPMBxD6awSZz+cQMtTkow12BLcUzPkSgGy4Yb
	PneM8oVnbYhONKLDkfmJ8X/ASq9ZhPTXtVps017QoXx7GEBnjTknWT6/BmJ/6eMiH7vV0OEsqHL8H
	jCeUk36Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix0wk-0004gg-3s; Thu, 30 Jan 2020 03:56:50 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix0wg-0004gE-Ju
 for linux-rockchip@lists.infradead.org; Thu, 30 Jan 2020 03:56:48 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 337DFB76;
 Thu, 30 Jan 2020 11:56:43 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.110])
 by smtp.263.net (postfix) whith ESMTP id
 P12142T139908404467456S1580356602398616_; 
 Thu, 30 Jan 2020 11:56:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c8cb1fc783134bfe7f09a4a2100d8008>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.110
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 4/4] rk3288: vyasa: Add console settings
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
 <20200123141222.486-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6eb8f374-309c-86d1-1a16-90b6fc5a0d40@rock-chips.com>
Date: Thu, 30 Jan 2020 11:56:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200123141222.486-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_195647_277798_12523D6E 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS8yMyDkuIvljYgxMDoxMiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgY29uc29s
ZSBzZXR0aW5ncyBsaWtlIHN0ZGluLCBzdGRvdXQgYW5kIHN0ZGVyciBhcwo+IGNyb3MtZWMta2V5
YiBhbmQgdmlkY29uc29sZSByZXNwZWN0aXZlbHkgZm9yIFZ5YXNhIFJrMzI4OAo+IGJvYXJkLgo+
Cj4gVGhpcyB3b3VsZCBjZXJ0YWlubHkgaGVscCB0byBkZXRlY3QgdGhlIGF0dGFjaGVkIHZpZGVv
Cj4gZGV2aWNlcyAobGlrZSBIRE1JKSBhbmQgcHJpbnQgdGhlIGNvbnNvbGUgbWVzc2FnZSBvbiBk
aXNwbGF5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0
aW9ucy5jb20+ClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMu
Y29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBpbmNsdWRlL2NvbmZpZ3Mvdnlhc2Etcmsz
Mjg4LmggfCA2ICsrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvY29uZmlncy92eWFzYS1yazMyODgu
aCBiL2luY2x1ZGUvY29uZmlncy92eWFzYS1yazMyODguaAo+IGluZGV4IDM1NzRhM2I1YTUuLmUz
MWRjNzc3MjAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3Z5YXNhLXJrMzI4OC5oCj4g
KysrIGIvaW5jbHVkZS9jb25maWdzL3Z5YXNhLXJrMzI4OC5oCj4gQEAgLTgsNyArOCwxMSBAQAo+
ICAgI2lmbmRlZiBfX0NPTkZJR19ICj4gICAjZGVmaW5lIF9fQ09ORklHX0gKPiAgIAo+IC0jZGVm
aW5lIFJPQ0tDSElQX0RFVklDRV9TRVRUSU5HUwo+ICsjZGVmaW5lIFJPQ0tDSElQX0RFVklDRV9T
RVRUSU5HUyBcCj4gKwkJInN0ZGluPXNlcmlhbCxjcm9zLWVjLWtleWJcMCIgXAo+ICsJCSJzdGRv
dXQ9c2VyaWFsLHZpZGNvbnNvbGVcMCIgXAo+ICsJCSJzdGRlcnI9c2VyaWFsLHZpZGNvbnNvbGVc
MCIKPiArCj4gICAjaW5jbHVkZSA8Y29uZmlncy9yazMyODhfY29tbW9uLmg+Cj4gICAKPiAgICN1
bmRlZiBCT09UX1RBUkdFVF9ERVZJQ0VTCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
