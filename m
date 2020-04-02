Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DE219C168
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AWWwhkCnf+YpHmG1syISqAL5HhkpLYiO/tAmYGyzoDE=; b=it43G6AGFqTrMZCs5Gp2XJmOs
	3pXgQAByU/TpAcTXT9E9M1lvcNyp/ySVW7DXey105DdZw1oszteILtLqX4N3Of+WQi1T6qMCEkZON
	Vr6Qk027UNFpD+HVjLgcaQp/LRbPPcFFyItnUprHR9aezDGP6wePnphiMESaV1QOflP4LbM5YlQ5m
	GqFdCE7gvZRsaqyEKDMuTDSA55XrPghYpakWvXGitop0f8W+2h/XS8WvZOS0UKyYFoWOPZTkOYino
	ohPkT2Mupx1+Wy5eV7MsaO2BgIdrn/L2bgnNED8VWGfAGcsVdXyfSzs1PwCQlwX/prilqvUk8HM7K
	fKE7wxfRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzGc-0001ZJ-QT; Thu, 02 Apr 2020 12:48:18 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzGZ-0001Yl-0u
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:48:16 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 1A23FB61;
 Thu,  2 Apr 2020 20:48:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.111] (unknown [112.49.233.3])
 by smtp.263.net (postfix) whith ESMTP id
 P31088T139854839273216S1585831690733788_; 
 Thu, 02 Apr 2020 20:48:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0ef67dd4d714a37d4e9409b5a0bcbd6d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: manivannan.sadhasivam@linaro.org
X-SENDER-IP: 112.49.233.3
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 4/5] rockchip: Enable HDMI output on rk3399 board w/
 HDMI
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <a36dafa1-c9e8-f51d-4335-e2d49cd6f41e@rock-chips.com>
Date: Thu, 2 Apr 2020 20:48:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402114125.2501-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_054815_411109_8C3A3EFC 
X-CRM114-Status: GOOD (  13.80  )
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
Cc: linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, u-boot@lists.denx.de,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yIOS4i+WNiDc6NDEsIEphZ2FuIFRla2kgd3JvdGU6Cj4gRW5hYmxlIGNvbmZp
ZyBvcHRpb25zIGFuZCBjb25zb2xlIHNldHRpbmcgdG8gcmVzcGVjdGl2ZQo+IHJrMzM5OSBib2Fy
ZCBmb3IgSERNSSBvdXRwdXQuCj4KPiBCb2FyZHMgc3VwcG9ydGVkIGFuZCB0ZXN0ZWQgb24gdGhp
cyBwYXRjaCBhcmU6Cj4gLSBOYW5vUGMgVDQKPiAtIE5hbm9QaSBNNAo+IC0gTmFub1BpIE5lbzQK
PiAtIFJPQy1SSzMzOTktUEMKPiAtIFJvY2s5NjAKPgo+IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKCgpSZXZpZXdlZC1ieTogS2V2
ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0t
LQo+IENoYW5nZXMgZm9yIHYzOgo+IC0gYWRkIHJvY2s5NjAgaGRtaSBvdXQgc3VwcG9ydAo+Cj4g
ICBjb25maWdzL25hbm9wYy10NC1yazMzOTlfZGVmY29uZmlnICAgfCA3ICsrKysrKysKPiAgIGNv
bmZpZ3MvbmFub3BpLW00LXJrMzM5OV9kZWZjb25maWcgICB8IDcgKysrKysrKwo+ICAgY29uZmln
cy9uYW5vcGktbmVvNC1yazMzOTlfZGVmY29uZmlnIHwgNyArKysrKysrCj4gICBjb25maWdzL3Jv
Yy1wYy1yazMzOTlfZGVmY29uZmlnICAgICAgfCA2ICsrKysrKwo+ICAgY29uZmlncy9yb2NrOTYw
LXJrMzM5OV9kZWZjb25maWcgICAgIHwgNyArKysrKysrCj4gICBpbmNsdWRlL2NvbmZpZ3MvZXZi
X3JrMzM5OS5oICAgICAgICAgfCA1ICsrKysrCj4gICBpbmNsdWRlL2NvbmZpZ3Mvcm9jazk2MF9y
azMzOTkuaCAgICAgfCA1ICsrKysrCj4gICA3IGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMo
KykKPgo+IGRpZmYgLS1naXQgYS9jb25maWdzL25hbm9wYy10NC1yazMzOTlfZGVmY29uZmlnIGIv
Y29uZmlncy9uYW5vcGMtdDQtcmszMzk5X2RlZmNvbmZpZwo+IGluZGV4IDllYTliMTE1NzQuLjYw
N2EwMGRiZjcgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9uYW5vcGMtdDQtcmszMzk5X2RlZmNvbmZp
Zwo+ICsrKyBiL2NvbmZpZ3MvbmFub3BjLXQ0LXJrMzM5OV9kZWZjb25maWcKPiBAQCAtNTIsNSAr
NTIsMTIgQEAgQ09ORklHX1VTQl9FVEhFUl9BU0lYODgxNzk9eQo+ICAgQ09ORklHX1VTQl9FVEhF
Ul9NQ1M3ODMwPXkKPiAgIENPTkZJR19VU0JfRVRIRVJfUlRMODE1Mj15Cj4gICBDT05GSUdfVVNC
X0VUSEVSX1NNU0M5NVhYPXkKPiArQ09ORklHX1VTQl9LRVlCT0FSRD15Cj4gICBDT05GSUdfU1BM
X1RJTllfTUVNU0VUPXkKPiAgIENPTkZJR19FUlJOT19TVFI9eQo+ICtDT05GSUdfRE1fVklERU89
eQo+ICtDT05GSUdfVklERU9fQlBQMTY9eQo+ICtDT05GSUdfVklERU9fQlBQMzI9eQo+ICtDT05G
SUdfRElTUExBWT15Cj4gK0NPTkZJR19WSURFT19ST0NLQ0hJUD15Cj4gK0NPTkZJR19ESVNQTEFZ
X1JPQ0tDSElQX0hETUk9eQo+IGRpZmYgLS1naXQgYS9jb25maWdzL25hbm9waS1tNC1yazMzOTlf
ZGVmY29uZmlnIGIvY29uZmlncy9uYW5vcGktbTQtcmszMzk5X2RlZmNvbmZpZwo+IGluZGV4IGFk
MGU4MDhiZjYuLjNmY2I3YWMyZDcgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9uYW5vcGktbTQtcmsz
Mzk5X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3MvbmFub3BpLW00LXJrMzM5OV9kZWZjb25maWcK
PiBAQCAtNTIsNSArNTIsMTIgQEAgQ09ORklHX1VTQl9FVEhFUl9BU0lYODgxNzk9eQo+ICAgQ09O
RklHX1VTQl9FVEhFUl9NQ1M3ODMwPXkKPiAgIENPTkZJR19VU0JfRVRIRVJfUlRMODE1Mj15Cj4g
ICBDT05GSUdfVVNCX0VUSEVSX1NNU0M5NVhYPXkKPiArQ09ORklHX1VTQl9LRVlCT0FSRD15Cj4g
ICBDT05GSUdfU1BMX1RJTllfTUVNU0VUPXkKPiAgIENPTkZJR19FUlJOT19TVFI9eQo+ICtDT05G
SUdfRE1fVklERU89eQo+ICtDT05GSUdfVklERU9fQlBQMTY9eQo+ICtDT05GSUdfVklERU9fQlBQ
MzI9eQo+ICtDT05GSUdfRElTUExBWT15Cj4gK0NPTkZJR19WSURFT19ST0NLQ0hJUD15Cj4gK0NP
TkZJR19ESVNQTEFZX1JPQ0tDSElQX0hETUk9eQo+IGRpZmYgLS1naXQgYS9jb25maWdzL25hbm9w
aS1uZW80LXJrMzM5OV9kZWZjb25maWcgYi9jb25maWdzL25hbm9waS1uZW80LXJrMzM5OV9kZWZj
b25maWcKPiBpbmRleCBkMDM4YThjYWI5Li5iOWVhNTM1ZTQzIDEwMDY0NAo+IC0tLSBhL2NvbmZp
Z3MvbmFub3BpLW5lbzQtcmszMzk5X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3MvbmFub3BpLW5l
bzQtcmszMzk5X2RlZmNvbmZpZwo+IEBAIC01Miw1ICs1MiwxMiBAQCBDT05GSUdfVVNCX0VUSEVS
X0FTSVg4ODE3OT15Cj4gICBDT05GSUdfVVNCX0VUSEVSX01DUzc4MzA9eQo+ICAgQ09ORklHX1VT
Ql9FVEhFUl9SVEw4MTUyPXkKPiAgIENPTkZJR19VU0JfRVRIRVJfU01TQzk1WFg9eQo+ICtDT05G
SUdfVVNCX0tFWUJPQVJEPXkKPiAgIENPTkZJR19TUExfVElOWV9NRU1TRVQ9eQo+ICAgQ09ORklH
X0VSUk5PX1NUUj15Cj4gK0NPTkZJR19ETV9WSURFTz15Cj4gK0NPTkZJR19WSURFT19CUFAxNj15
Cj4gK0NPTkZJR19WSURFT19CUFAzMj15Cj4gK0NPTkZJR19ESVNQTEFZPXkKPiArQ09ORklHX1ZJ
REVPX1JPQ0tDSElQPXkKPiArQ09ORklHX0RJU1BMQVlfUk9DS0NISVBfSERNST15Cj4gZGlmZiAt
LWdpdCBhL2NvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZjb25maWcgYi9jb25maWdzL3JvYy1wYy1y
azMzOTlfZGVmY29uZmlnCj4gaW5kZXggZDU0MGExN2FlYi4uYmU3NjUyNGNlZiAxMDA2NDQKPiAt
LS0gYS9jb25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnCj4gKysrIGIvY29uZmlncy9yb2Mt
cGMtcmszMzk5X2RlZmNvbmZpZwo+IEBAIC01OSwzICs1OSw5IEBAIENPTkZJR19VU0JfRVRIRVJf
U01TQzk1WFg9eQo+ICAgQ09ORklHX1VTQl9LRVlCT0FSRD15Cj4gICBDT05GSUdfU1BMX1RJTllf
TUVNU0VUPXkKPiAgIENPTkZJR19FUlJOT19TVFI9eQo+ICtDT05GSUdfRE1fVklERU89eQo+ICtD
T05GSUdfVklERU9fQlBQMTY9eQo+ICtDT05GSUdfVklERU9fQlBQMzI9eQo+ICtDT05GSUdfRElT
UExBWT15Cj4gK0NPTkZJR19WSURFT19ST0NLQ0hJUD15Cj4gK0NPTkZJR19ESVNQTEFZX1JPQ0tD
SElQX0hETUk9eQo+IGRpZmYgLS1naXQgYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNvbmZp
ZyBiL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggYmE0MjI2ZTE3My4u
YzRlOTU0NzMxYSAxMDA2NDQKPiAtLS0gYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNvbmZp
Zwo+ICsrKyBiL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTU4LDUgKzU4
LDEyIEBAIENPTkZJR19VU0JfRVRIRVJfQVNJWDg4MTc5PXkKPiAgIENPTkZJR19VU0JfRVRIRVJf
TUNTNzgzMD15Cj4gICBDT05GSUdfVVNCX0VUSEVSX1JUTDgxNTI9eQo+ICAgQ09ORklHX1VTQl9F
VEhFUl9TTVNDOTVYWD15Cj4gK0NPTkZJR19VU0JfS0VZQk9BUkQ9eQo+ICAgQ09ORklHX1NQTF9U
SU5ZX01FTVNFVD15Cj4gICBDT05GSUdfRVJSTk9fU1RSPXkKPiArQ09ORklHX0RNX1ZJREVPPXkK
PiArQ09ORklHX1ZJREVPX0JQUDE2PXkKPiArQ09ORklHX1ZJREVPX0JQUDMyPXkKPiArQ09ORklH
X0RJU1BMQVk9eQo+ICtDT05GSUdfVklERU9fUk9DS0NISVA9eQo+ICtDT05GSUdfRElTUExBWV9S
T0NLQ0hJUF9IRE1JPXkKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL2V2Yl9yazMzOTku
aCBiL2luY2x1ZGUvY29uZmlncy9ldmJfcmszMzk5LmgKPiBpbmRleCBjMGIwMzU4ODkzLi4yZDNk
YjIyODc3IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvY29uZmlncy9ldmJfcmszMzk5LmgKPiArKysg
Yi9pbmNsdWRlL2NvbmZpZ3MvZXZiX3JrMzM5OS5oCj4gQEAgLTYsNiArNiwxMSBAQAo+ICAgI2lm
bmRlZiBfX0VWQl9SSzMzOTlfSAo+ICAgI2RlZmluZSBfX0VWQl9SSzMzOTlfSAo+ICAgCj4gKyNk
ZWZpbmUgUk9DS0NISVBfREVWSUNFX1NFVFRJTkdTIFwKPiArCQkic3RkaW49c2VyaWFsLHVzYmti
ZFwwIiBcCj4gKwkJInN0ZG91dD1zZXJpYWwsdmlkY29uc29sZVwwIiBcCj4gKwkJInN0ZGVycj1z
ZXJpYWwsdmlkY29uc29sZVwwIgo+ICsKPiAgICNpbmNsdWRlIDxjb25maWdzL3JrMzM5OV9jb21t
b24uaD4KPiAgIAo+ICAgI2lmIGRlZmluZWQoQ09ORklHX0VOVl9JU19JTl9NTUMpCj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvY29uZmlncy9yb2NrOTYwX3JrMzM5OS5oIGIvaW5jbHVkZS9jb25maWdz
L3JvY2s5NjBfcmszMzk5LmgKPiBpbmRleCA3NDZkMjRjYmZmLi4zMDRhZDJiN2FhIDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvY29uZmlncy9yb2NrOTYwX3JrMzM5OS5oCj4gKysrIGIvaW5jbHVkZS9j
b25maWdzL3JvY2s5NjBfcmszMzk5LmgKPiBAQCAtNiw2ICs2LDExIEBACj4gICAjaWZuZGVmIF9f
Uk9DSzk2MF9SSzMzOTlfSAo+ICAgI2RlZmluZSBfX1JPQ0s5NjBfUkszMzk5X0gKPiAgIAo+ICsj
ZGVmaW5lIFJPQ0tDSElQX0RFVklDRV9TRVRUSU5HUyBcCj4gKwkJInN0ZGluPXNlcmlhbCx1c2Jr
YmRcMCIgXAo+ICsJCSJzdGRvdXQ9c2VyaWFsLHZpZGNvbnNvbGVcMCIgXAo+ICsJCSJzdGRlcnI9
c2VyaWFsLHZpZGNvbnNvbGVcMCIKPiArCj4gICAjaW5jbHVkZSA8Y29uZmlncy9yazMzOTlfY29t
bW9uLmg+Cj4gICAKPiAgICNkZWZpbmUgQ09ORklHX1NZU19NTUNfRU5WX0RFVgkJMQoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
