Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC68C89DFE
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 14:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wzF0Czbpt1iBjpqUsmbcJjTYnFjWB7SHOPXQOkWn4X8=; b=f8PlubO2DCkXoS6NBjeW5BNCW
	IsbrKMYXqR07Gxc26RjJC22zQSHQUV0K16R+q+UQ3FapxUjw1Hi5quERWus8OmB9akv6RRch/gbzL
	b+I+9mwQbwaP4QDLKei9dd+oCjM3alu7Bj1fenWdTIMhLvJFyAPJKsDvpyLPg1zfQhJ/uqBcEO4zW
	AaR7r9pOXl8yiUwomr7EbCQIP1L08HfC5ht+5Ea7jDg9xiv2PHG0HvRADp9WFCo1xPwPsiEgfr+5h
	qpOXoZj1FKMVRGVEgJYxw/9Fd9Zj2y/eRncLG3MHJwFr/MdyfJd5eYnMcynuo3FXZ4L+Jw0b2AonE
	7G/xlsifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9JK-000759-JE; Mon, 12 Aug 2019 12:20:26 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Fw-0003V3-37
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 12:16:58 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id C30935EA;
 Mon, 12 Aug 2019 20:16:45 +0800 (CST)
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
 P8185T140700526028544S1565612202265661_; 
 Mon, 12 Aug 2019 20:16:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <94202846c650325fda60b116f219eda3>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 14/15] rockchip: rk3399: Add bootcount support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-15-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3a38244a-974f-f3e5-0d09-28850b72b247@rock-chips.com>
Date: Mon, 12 Aug 2019 20:16:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729074711.16988-15-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051656_701584_E1D9BD8D 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgoKT24gMjAxOS83LzI5IOS4i+WNiDM6NDcsIEphZ2FuIFRla2kgd3JvdGU6Cj4g
QWRkIGJvb3Rjb3VudCBzdXBwb3J0IGZvciBSb2NrY2hpcCByazMzOTkuCj4KPiBUaGUgYm9vdGNv
dW50IHZhbHVlIGlzIHByZXNlcnZlZCBpbiBQTVVfU1lTX1JFRzAgcmVnaXN0ZXIsCgpQTVVfU1lT
X1JFRzAgaGFzIGJlZW4gdXNlZCBieSBvdGhlciBjYXNlIGluIFJvY2tjaGlwLCB3ZSBkb24ndApy
ZWNvbW1lbmQgdG8gdXNlIGl0LCB0aGUgUE1VR1JGX09TX1JFRzMgaXMgc3RpbGwgcmVzZXJ2ZWQg
bm93LApjb3VsZCB5b3UgdXNlIGl0IGluc3RlYWQ/CgpUaGFua3MsCi0gS2V2ZXIKCj4gdGhpcyB3
b3VsZCBoZWxwIHRvIHN1cHBvcnQgcmVkdW5kZW50IGJvb3QuCj4KPiBPbmNlIHRoZSByZWR1bmRh
bnQgYm9vdCB0cmlnZ2VycywgdGhlIGFsdGJvb3QgY29tbWFuZAo+IHdpbGwgbG9vayBmb3IgZXh0
bGludXgtcm9sbGJhY2suY29uZiBvbiBwYXJ0aWN1bGFyCj4gYm9vdGFibGUgcGFydGl0aW9uIHdo
aWNoIHN1cHBvc2VkIHRvIGJlIGEgcmVjb3ZlcnkKPiBwYXJ0aXRpb24gd2hlcmUgcmVkdW5kYW50
IGJvb3QgcmVxdWlyZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZp
ZyAgICAgICAgfCAgMiArKwo+ICAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvS2NvbmZp
ZyB8IDEwICsrKysrKysrKysKPiAgIGluY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggICAg
ICAgfCAgNSArKysrLQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9LY29uZmln
IGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9LY29uZmlnCj4gaW5kZXggMTdmMzFlODlmMy4uZGQ1
MDU1ZWQ2OSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcKPiAr
KysgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcKPiBAQCAtMTg0LDYgKzE4NCw4IEBA
IGNvbmZpZyBST0NLQ0hJUF9SSzMzOTkKPiAgIAlpbXBseSBUUExfQ0xLCj4gICAJaW1wbHkgVFBM
X1RJTllfTUVNU0VUCj4gICAJaW1wbHkgVFBMX1JPQ0tDSElQX0NPTU1PTl9CT0FSRAo+ICsJaW1w
bHkgU1lTX0JPT1RDT1VOVF9TSU5HTEVXT1JEIGlmIEJPT1RDT1VOVF9MSU1JVAo+ICsJaW1wbHkg
Q01EX0JPT1RDT1VOVCBpZiBCT09UQ09VTlRfTElNSVQKPiAgIAloZWxwCj4gICAJICBUaGUgUm9j
a2NoaXAgUkszMzk5IGlzIGEgQVJNLWJhc2VkIFNvQyB3aXRoIGEgZHVhbC1jb3JlIENvcnRleC1B
NzIKPiAgIAkgIGFuZCBxdWFkLWNvcmUgQ29ydGV4LUE1My4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAv
cmszMzk5L0tjb25maWcKPiBpbmRleCA2NjYwZDA1MzQ5Li42OGFjOTEzYmNiIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5L0tjb25maWcKPiArKysgYi9hcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9LY29uZmlnCj4gQEAgLTkxLDYgKzkxLDE2IEBAIGNvbmZp
ZyBUUExfU1RBQ0sKPiAgIGNvbmZpZyBUUExfVEVYVF9CQVNFCj4gICAgICAgICAgIGRlZmF1bHQg
MHhmZjhjMjAwMAo+ICAgCj4gK2lmIEJPT1RDT1VOVF9MSU1JVAo+ICsKPiArY29uZmlnIEJPT1RD
T1VOVF9CT09UTElNSVQKPiArCWRlZmF1bHQgMwo+ICsKPiArY29uZmlnIFNZU19CT09UQ09VTlRf
QUREUgo+ICsJZGVmYXVsdCAweGZmMzEwMGYwCSMgUE1VX1NZU19SRUcwCj4gKwo+ICtlbmRpZiAj
IEJPT1RDT1VOVF9MSU1JVAo+ICsKPiAgIHNvdXJjZSAiYm9hcmQvcm9ja2NoaXAvZXZiX3JrMzM5
OS9LY29uZmlnIgo+ICAgc291cmNlICJib2FyZC90aGVvYnJvbWEtc3lzdGVtcy9wdW1hX3JrMzM5
OS9LY29uZmlnIgo+ICAgc291cmNlICJib2FyZC92YW1ycy9yb2NrOTYwX3JrMzM5OS9LY29uZmln
Igo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oIGIvaW5jbHVk
ZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+IGluZGV4IDY3YjQ4ZTAzYmEuLmFjZTgyOTI4ZDEg
MTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+ICsrKyBiL2lu
Y2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPiBAQCAtNzAsNyArNzAsMTAgQEAKPiAgIAki
ZmR0ZmlsZT0iIENPTkZJR19ERUZBVUxUX0ZEVF9GSUxFICJcMCIgXAo+ICAgCSJwYXJ0aXRpb25z
PSIgUEFSVFNfREVGQVVMVCBcCj4gICAJUk9DS0NISVBfREVWSUNFX1NFVFRJTkdTIFwKPiAtCUJP
T1RFTlYKPiArCUJPT1RFTlYgXAo+ICsJImFsdGJvb3RjbWQ9IiBcCj4gKwkJInNldGVudiBib290
X3N5c2xpbnV4X2NvbmYgZXh0bGludXgvZXh0bGludXgtcm9sbGJhY2suY29uZjsiIFwKPiArCQki
cnVuIGRpc3Ryb19ib290Y21kXDAiCj4gICAKPiAgICNlbmRpZgo+ICAgCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
