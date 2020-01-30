Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA0414D56D
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Jan 2020 04:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fDW/S5m+VsV2zvM19OYNBzd1qGhbB5vNmrrLg5Sa0es=; b=etNyLZU5MgqNbjIM/6mf+WVaf
	UxUw0uRSU+oAg8AFIrAMWNxHd+/IiQY5/RT9s0NU9xwdyd4T3yG2t3Za4xbxJQWR4sWfSoOQWa7Oq
	8gtHGVlVFl6QxVb0LQWgvzsRGczUa+sM1M+QDVWgOGL4EbZCbUSpZCj1L38szH1KhqNbgRwe0jq1J
	lsM06Uuf3ha6+Vsrz8fq71ADxeP49cwDAh8dPJLSdMVPdKxv+yenoRr6FO1rPsg1BfUyXkKqo3hoz
	L8RWo93aUptVIE15g29eCNKxhbnsmUkrie6JY4T7CO+yajrmyUNFdmymSzQiNlTnEVqK0F2A5Bde4
	KPXu+teWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix0wD-0004cw-I9; Thu, 30 Jan 2020 03:56:17 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix0w9-0004cR-Oo
 for linux-rockchip@lists.infradead.org; Thu, 30 Jan 2020 03:56:15 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 559743A2;
 Thu, 30 Jan 2020 11:56:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.110])
 by smtp.263.net (postfix) whith ESMTP id
 P5439T140292850169600S1580356569418192_; 
 Thu, 30 Jan 2020 11:56:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3cfed87af5b4c12305eb48451da896cf>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.110
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/4] rk3288: tinker: Enable HDMI output
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
 <20200123141222.486-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <29d683ef-fb02-9d1a-a4ef-9a34146f0012@rock-chips.com>
Date: Thu, 30 Jan 2020 11:56:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200123141222.486-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_195614_064232_D198B0C0 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS8yMyDkuIvljYgxMDoxMiwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUgSERN
SSBvdXRwdXQgZm9yIFRpbmtlciBSSzMyODggYm9hcmQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdh
biBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KUmV2aWV3ZWQtYnk6IEtldmVyIFlh
bmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAg
IGNvbmZpZ3MvdGlua2VyLXJrMzI4OF9kZWZjb25maWcgfCA2ICsrKysrKwo+ICAgaW5jbHVkZS9j
b25maWdzL3Rpbmtlcl9yazMyODguaCB8IDYgKysrKystCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9jb25maWdzL3Rp
bmtlci1yazMyODhfZGVmY29uZmlnIGIvY29uZmlncy90aW5rZXItcmszMjg4X2RlZmNvbmZpZwo+
IGluZGV4IDg5NGU3ZDFlMTIuLmVjYWRlNDdlN2EgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy90aW5r
ZXItcmszMjg4X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3MvdGlua2VyLXJrMzI4OF9kZWZjb25m
aWcKPiBAQCAtODMsMyArODMsOSBAQCBDT05GSUdfVVNCX0VUSEVSX0FTSVg9eQo+ICAgQ09ORklH
X1VTQl9FVEhFUl9TTVNDOTVYWD15Cj4gICBDT05GSUdfQ01EX0RIUllTVE9ORT15Cj4gICBDT05G
SUdfRVJSTk9fU1RSPXkKPiArQ09ORklHX0RNX1ZJREVPPXkKPiArQ09ORklHX1ZJREVPX0JQUDE2
PXkKPiArQ09ORklHX1ZJREVPX0JQUDMyPXkKPiArQ09ORklHX0RJU1BMQVk9eQo+ICtDT05GSUdf
VklERU9fUk9DS0NISVA9eQo+ICtDT05GSUdfRElTUExBWV9ST0NLQ0hJUF9IRE1JPXkKPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3Rpbmtlcl9yazMyODguaCBiL2luY2x1ZGUvY29uZmln
cy90aW5rZXJfcmszMjg4LmgKPiBpbmRleCBmOGE1NWEyY2VjLi5mMTA5NWNjZDBlIDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvY29uZmlncy90aW5rZXJfcmszMjg4LmgKPiArKysgYi9pbmNsdWRlL2Nv
bmZpZ3MvdGlua2VyX3JrMzI4OC5oCj4gQEAgLTYsNyArNiwxMSBAQAo+ICAgI2lmbmRlZiBfX0NP
TkZJR19ICj4gICAjZGVmaW5lIF9fQ09ORklHX0gKPiAgIAo+IC0jZGVmaW5lIFJPQ0tDSElQX0RF
VklDRV9TRVRUSU5HUwo+ICsjZGVmaW5lIFJPQ0tDSElQX0RFVklDRV9TRVRUSU5HUyBcCj4gKwkJ
InN0ZGluPXNlcmlhbCxjcm9zLWVjLWtleWJcMCIgXAo+ICsJCSJzdGRvdXQ9c2VyaWFsLHZpZGNv
bnNvbGVcMCIgXAo+ICsJCSJzdGRlcnI9c2VyaWFsLHZpZGNvbnNvbGVcMCIKPiArCj4gICAjaW5j
bHVkZSA8Y29uZmlncy9yazMyODhfY29tbW9uLmg+Cj4gICAKPiAgICN1bmRlZiBCT09UX1RBUkdF
VF9ERVZJQ0VTCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
