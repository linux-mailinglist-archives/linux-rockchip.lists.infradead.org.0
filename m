Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6A214D56A
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Jan 2020 04:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aDW2KR0zgKuoqNVabwhA5yGLbbgfeEIOGYDI7ffK/Zs=; b=urwMzqUVyMXWNKhQmwAaIu90L
	JZnMF8l74oC9Mw4sfmLvALFjbn2X3TONuJb1rg46/j9oBeDiXEi9jnChkTkXsyeyqGUGdJoub1pJ+
	7k39MRojO1tQjJBp20xa7AYtXnybzsJppeeduf+/jov4hvAE9ChnsARIsucq6E83Qz1sXJwK/ODL1
	FEuK6Yp1WzI8CDKjltKrnSFOyGQBt/AcbpTsAeR58PmPTJY+s9cjFGeqD78ERL/XdgqHqo/kcaCNB
	CWjRoGYfI7y5ECq3DqesLCjbLO7dxA+4AHpo8bz9SCSCGL0WkzzdsIMFSu2Gg4yfMqflsIN/DQrXk
	WG5Rjy74w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix0va-0004VR-Oe; Thu, 30 Jan 2020 03:55:38 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix0vY-0004UY-Bg
 for linux-rockchip@lists.infradead.org; Thu, 30 Jan 2020 03:55:37 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 90E47394;
 Thu, 30 Jan 2020 11:55:22 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.110])
 by smtp.263.net (postfix) whith ESMTP id
 P19896T140279036233472S1580356521361451_; 
 Thu, 30 Jan 2020 11:55:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <565cdbffa0e0bf79ac45f5855ed9533f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.110
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 1/4] rockchip: rk3288: Enable pre console buffer
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <73495425-6433-7001-fddd-df9161ae46cc@rock-chips.com>
Date: Thu, 30 Jan 2020 11:55:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200123141222.486-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_195536_634206_381BE0FC 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS8yMyDkuIvljYgxMDoxMiwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUgcHJl
IGNvbnNvbGUgYnVmZmVyIGZvciByazMyODggcGxhdGZvcm0uCj4KPiBUaGlzIHdvdWxkIGhlbHAg
dG8gY2FwdHVyZSB0aGUgY29uc29sZSBtZXNzYWdlcyBwcmlvciB0bwo+IHRoZSBjb25zb2xlIGJl
aW5nIGluaXRpYWxpc2VkLiBFbmFibGluZyB0aGlzIHdvdWxkIGhlbHAKPiB0byBjYXB0dXJlIGFs
bCB0aGUgY29uc29sZSBtZXNzYWdlcyBvbiB2aWRlbyBvdXRwdXQgc291cmNlCj4gbGlrZSBIRE1J
LiBTbyB3ZSBjYW4gZmluZCB0aGUgZnVsbCBjb25zb2xlIG1lc3NhZ2VzIG9mCj4gVS1Cb290IHBy
b3BlciBvbiBIRE1JIGRpc3BsYXkgd2hlbiBlbmFibGVkIGl0IGZvciBSSzMyODgKPiBwbGF0Zm9y
bSBib2FyZHMuCj4KPiBCdWZmZXIgYWRkcmVzcyB1c2VkIGZvciBwcmUgY29uc29sZSBpcyAweDBm
MDAwMDAwIHdoaWNoIGlzCj4gcmFtIGJhc2UgcGx1cyAyNDBNaUIuIHJpZ2h0IG5vdyB0aGUgQWxs
d2lubmVyIFNvQyBpcyB1c2luZwo+IHNpbWlsYXIgY29tcHV0YXRpb24uCj4KPiBTaWduZWQtb2Zm
LWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KUmV2aWV3ZWQtYnk6
IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIK
PiAtLS0KPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZyB8IDEgKwo+ICAgY29tbW9u
L0tjb25maWcgICAgICAgICAgICAgICAgIHwgMSArCj4gICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZp
ZyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+IGluZGV4IDJmMjYwYTVjNWYuLmVk
NzUxNGFiNzUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9LY29uZmlnCj4g
KysrIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9LY29uZmlnCj4gQEAgLTEwMiw2ICsxMDIsNyBA
QCBjb25maWcgUk9DS0NISVBfUkszMjg4Cj4gICAJc2VsZWN0IFNVUFBPUlRfU1BMCj4gICAJc2Vs
ZWN0IFNQTAo+ICAgCXNlbGVjdCBTVVBQT1JUX1RQTAo+ICsJaW1wbHkgUFJFX0NPTlNPTEVfQlVG
RkVSCj4gICAJaW1wbHkgUk9DS0NISVBfQ09NTU9OX0JPQVJECj4gICAJaW1wbHkgU1BMX1JPQ0tD
SElQX0NPTU1PTl9CT0FSRAo+ICAgCWltcGx5IFRQTF9DTEsKPiBkaWZmIC0tZ2l0IGEvY29tbW9u
L0tjb25maWcgYi9jb21tb24vS2NvbmZpZwo+IGluZGV4IGE3YzViYTI3OGEuLjIxZDAyNDQwNTAg
MTAwNjQ0Cj4gLS0tIGEvY29tbW9uL0tjb25maWcKPiArKysgYi9jb21tb24vS2NvbmZpZwo+IEBA
IC01NjcsNiArNTY3LDcgQEAgY29uZmlnIFBSRV9DT05fQlVGX0FERFIKPiAgIAlkZXBlbmRzIG9u
IFBSRV9DT05TT0xFX0JVRkZFUgo+ICAgCWRlZmF1bHQgMHgyZjAwMDAwMCBpZiBBUkNIX1NVTlhJ
ICYmIE1BQ0hfU1VOOUkKPiAgIAlkZWZhdWx0IDB4NGYwMDAwMDAgaWYgQVJDSF9TVU5YSSAmJiAh
TUFDSF9TVU45SQo+ICsJZGVmYXVsdCAweDBmMDAwMDAwIGlmIFJPQ0tDSElQX1JLMzI4OAo+ICAg
CWhlbHAKPiAgIAkgIFRoaXMgc2V0cyB0aGUgc3RhcnQgYWRkcmVzcyBvZiB0aGUgcHJlLWNvbnNv
bGUgYnVmZmVyLiBUaGlzIG11c3QKPiAgIAkgIGJlIGluIGF2YWlsYWJsZSBtZW1vcnkgYW5kIGlz
IGFjY2Vzc2VkIGJlZm9yZSByZWxvY2F0aW9uIGFuZAoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
