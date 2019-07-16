Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDEE6A8FE
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PUdD0cESf66zCuwB/pblwOMzXl6iiGDpibd9bzWnJkA=; b=Gbs+lhXDEbFskVMaBRI2KOOv4
	QVcvxB7Y+GDTvbzUqsYmY+6LcPGRIUDe/a5Cd/QNQLQhN9XZdzqxoWap53vZHdLRnnan2HUhnHozd
	evPNOApBfMmsg/0Mfd1EtflmFW1ZcuUvPVLOJYOZTftk2L0th9oF9+L/LBPtD7DMS2SQNevLoDEhV
	BH61+T3ryIAVTW9WX3RRG394a48ikKkEBQ2LPld/iAfHMliC19LQVk031M0+S80v2pLZl1LouTVZI
	opxubsgH+sjC8S0Nl9FWDkyCIFPK+6UFnPKzIFvpyRkcTHxMURUZ7+yx00Bofzr9xpCQ/K7OttOX2
	8PXmd2gGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN2D-0004DB-62; Tue, 16 Jul 2019 12:58:21 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN29-0004Cn-N7
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:58:19 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id 85156291;
 Tue, 16 Jul 2019 20:58:14 +0800 (CST)
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
 P28302T140709952739072S1563281884233245_; 
 Tue, 16 Jul 2019 20:58:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ed738c0c5473f7dddb51e6384370b8bd>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 02/57] ram: rk3399: Add channel number encoder macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <db1cd966-3d0d-e1e0-a9c7-b10c36018de9@rock-chips.com>
Date: Tue, 16 Jul 2019 20:58:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_055817_968887_AB866998 
X-CRM114-Status: GOOD (  11.92  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzaW1wbGlm
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBjaGFubmVsIG51bWJlci4KPgo+IFNpZ25lZC1v
ZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2
ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+
IC0tLQo+ICAgYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24u
aCB8IDIgKysKPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jICAgICAgICAg
ICAgICAgfCAyICstCj4gICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2No
aXAvc2RyYW1fY29tbW9uLmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3Nk
cmFtX2NvbW1vbi5oCj4gaW5kZXggOTJhNGM0ODVjMi4uMDc2YWZlMmFlMyAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gKysr
IGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IEBA
IC03Myw2ICs3Myw4IEBAIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyB7Cj4gICAjZGVmaW5lIFNZ
U19SRUdfUk9XXzNfNF9NQVNLCQkxCj4gICAjZGVmaW5lIFNZU19SRUdfQ0hJTkZPX1NISUZUKGNo
KQkoMjggKyAoY2gpKQo+ICAgI2RlZmluZSBTWVNfUkVHX0VOQ19ERFJUWVBFKG4pCQkoKG4pIDw8
IFNZU19SRUdfRERSVFlQRV9TSElGVCkKPiArI2RlZmluZSBTWVNfUkVHX0VOQ19OVU1fQ0gobikJ
CSgoKG4pIC0gU1lTX1JFR19OVU1fQ0hfTUFTSykgPDwgXAo+ICsJCQkJCVNZU19SRUdfTlVNX0NI
X1NISUZUKQo+ICAgI2RlZmluZSBTWVNfUkVHX1JBTktfU0hJRlQoY2gpCQkoMTEgKyAoY2gpICog
MTYpCj4gICAjZGVmaW5lIFNZU19SRUdfUkFOS19NQVNLCQkxCj4gICAjZGVmaW5lIFNZU19SRUdf
Q09MX1NISUZUKGNoKQkJKDkgKyAoY2gpICogMTYpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFt
L3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmsz
Mzk5LmMKPiBpbmRleCBmNTg4MzZjMDM3Li44MzAzMTFmZmE5IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2No
aXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTA3Nyw3ICsxMDc3LDcgQEAgc3RhdGljIHZvaWQgZHJh
bV9hbGxfY29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJdW5zaWduZWQgaW50IGNo
YW5uZWwsIGlkeDsKPiAgIAo+ICAgCXN5c19yZWcgfD0gU1lTX1JFR19FTkNfRERSVFlQRShwYXJh
bXMtPmJhc2UuZHJhbXR5cGUpOwo+IC0Jc3lzX3JlZyB8PSAocGFyYW1zLT5iYXNlLm51bV9jaGFu
bmVscyAtIDEpIDw8IFNZU19SRUdfTlVNX0NIX1NISUZUOwo+ICsJc3lzX3JlZyB8PSBTWVNfUkVH
X0VOQ19OVU1fQ0gocGFyYW1zLT5iYXNlLm51bV9jaGFubmVscyk7Cj4gICAKPiAgIAlmb3IgKGNo
YW5uZWwgPSAwLCBpZHggPSAwOwo+ICAgCSAgICAgKGlkeCA8IHBhcmFtcy0+YmFzZS5udW1fY2hh
bm5lbHMpICYmIChjaGFubmVsIDwgMik7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
