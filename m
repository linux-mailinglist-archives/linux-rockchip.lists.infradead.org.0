Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362119C41A
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vI8BpIkKMdM2a9S4H0KWOyLfLabGS9QtpRImOolEeeg=; b=D8snTxbzFSvWpzz+3YdPizNf2
	lYdNyBNEgSWkiqnm90jEkWorw0g3a/4qcx//oZcYsf6DwzTgglDyK7bRDeBBjK2+f4Oaay/8mOaAT
	sfORkl0MKKH9d0BQad8XbtEJ+UU/rtvPrv5vgXZe9atf7ZCuRuVZ68bQ5E7sgRQRsDkQgbQc4fdbc
	cjZpLF+WONMwPBbyhK9T5KNrmhRRXuSjyiFwYw+fwp06hxqkSt0Uz567Ci7gRgoA6/V5XQ2fX5SQ0
	F+9aqKdQqEreCUAgaFpT3HDky4+jMC6kesORxBXkSvcw01JNnIxd8s/jC7CKUiegayMZ0CK+LW9AH
	bo0MwkF6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0qQ-0005zP-0x; Thu, 02 Apr 2020 14:29:22 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0qL-0005ya-Vh
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:29:19 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id 22AA13D0;
 Thu,  2 Apr 2020 22:29:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.111] (unknown [112.49.233.3])
 by smtp.263.net (postfix) whith ESMTP id
 P23721T140235312723712S1585837737105230_; 
 Thu, 02 Apr 2020 22:29:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3b922a282013a68192532c3e873d04e8>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.3
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 0/5] rockchip: rk3399: Fix HDMI out
To: Anatolij Gustschin <agust@denx.de>, Jagan Teki <jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402155616.013f6bf8@crub>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4e11274d-b166-1e41-83a6-8bf647f96c84@rock-chips.com>
Date: Thu, 2 Apr 2020 22:28:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402155616.013f6bf8@crub>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_072918_315661_24CACF59 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: u-boot@lists.denx.de, Simon Glass <sjg@chromium.org>,
 linux-rockchip@lists.infradead.org, sunil@amarulasolutions.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQW5hdG9saWosCgpPbiAyMDIwLzQvMiDkuIvljYg5OjU2LCBBbmF0b2xpaiBHdXN0c2NoaW4g
d3JvdGU6Cj4gT24gVGh1LCAgMiBBcHIgMjAyMCAxNzoxMToyMCArMDUzMAo+IEphZ2FuIFRla2kg
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20gd3JvdGU6Cj4gLi4uCj4+IEphZ2FuIFRla2kgKDUp
Ogo+PiAgICBjbGs6IHJrMzM5OTogU2V0IGVtcHR5IGZvciB2b3BsIGFzc2lnbmVkLWNsb2Nrcwo+
PiAgICB2aWRlbzogcm9ja2NoaXA6IEZpeCB2b3AgbW9kZXMgZm9yIHJrMzM5OQo+PiAgICByb2Nr
Y2hpcDogRW5hYmxlIHByZSBjb25zb2xlIGZvciByazMzOTkKPj4gICAgcm9ja2NoaXA6IEVuYWJs
ZSBIRE1JIG91dHB1dCBvbiByazMzOTkgYm9hcmQgdy8gSERNSQo+PiAgICB2aWRlbzogcm9ja2No
aXA6IFN1cHBvcnQgNEsgcmVzb2x1dGlvbiBmb3IgcmszMzk5LCBIRE1JCj4+Cj4+ICAgYXJjaC9h
cm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC92b3BfcmszMjg4LmggfCAxMSArKysrKysrKysr
Kwo+PiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgICAgIHwg
IDEgKwo+PiAgIGNvbW1vbi9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgIDEgKwo+PiAgIGNvbmZpZ3MvbmFub3BjLXQ0LXJrMzM5OV9kZWZjb25maWcgICAgICAgICAg
ICAgIHwgIDcgKysrKysrKwo+PiAgIGNvbmZpZ3MvbmFub3BpLW00LXJrMzM5OV9kZWZjb25maWcg
ICAgICAgICAgICAgIHwgIDcgKysrKysrKwo+PiAgIGNvbmZpZ3MvbmFub3BpLW5lbzQtcmszMzk5
X2RlZmNvbmZpZyAgICAgICAgICAgIHwgIDcgKysrKysrKwo+PiAgIGNvbmZpZ3Mvcm9jLXBjLXJr
MzM5OV9kZWZjb25maWcgICAgICAgICAgICAgICAgIHwgIDYgKysrKysrCj4+ICAgY29uZmlncy9y
b2NrOTYwLXJrMzM5OV9kZWZjb25maWcgICAgICAgICAgICAgICAgfCAgNyArKysrKysrCj4+ICAg
ZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jICAgICAgICAgICAgICAgfCAgNyArKysr
KysrCj4+ICAgZHJpdmVycy92aWRlby9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgICAgICAg
fCAgMiArKwo+PiAgIGRyaXZlcnMvdmlkZW8vcm9ja2NoaXAvcmszMzk5X3ZvcC5jICAgICAgICAg
ICAgIHwgIDIgLS0KPj4gICBkcml2ZXJzL3ZpZGVvL3JvY2tjaGlwL3JrX3ZvcC5jICAgICAgICAg
ICAgICAgICB8ICA0ICsrKysKPj4gICBpbmNsdWRlL2NvbmZpZ3MvZXZiX3JrMzM5OS5oICAgICAg
ICAgICAgICAgICAgICB8ICA1ICsrKysrCj4+ICAgaW5jbHVkZS9jb25maWdzL3JvY2s5NjBfcmsz
Mzk5LmggICAgICAgICAgICAgICAgfCAgNSArKysrKwo+PiAgIDE0IGZpbGVzIGNoYW5nZWQsIDcw
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gU2VyaWVzIGFwcGxpZWQgdG8gdS1ib290
LXZpZGVvL3ZpZGVvLWZpeGVzLXYyMDIwLjA0LCB0aGFua3MhCgpJIHdhcyBhYm91dCB0byBhcHBs
eSB0aGVzZSBwYXRjaGVzLCBhbmQgdW5kZXIgdHJhdmlzIGJ1aWxkIG5vdy4KCkl0J3MgYWxzbyBP
SyBmb3IgdGhlc2UgcGF0Y2hlcyB0byBtZXJnZSBpbnRvIHUtYm9vdC12aWRlby4KCgpUaGFua3Ms
CgotIEtldmVyCgo+Cj4gLS0KPiBBbmF0b2xpago+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
