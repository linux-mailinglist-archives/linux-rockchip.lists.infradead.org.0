Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9E21F4BE2
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 05:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lu/lG++HiE3g2W7Lf1Zbi8Sxx8lxhl+oSUIwdVFENg=; b=tf9mQuotpdZ63F
	7hCFfMlqiiylAJFpwBEbTi876bJRQy+IxBcdKzMM/Dv1eIu5a1QVO6pP3/apOdAQlvo6GfcAnvfLr
	Vv5LnNmfdguqXJOustHlwKB/cPyIqp1QJExYYvUfkXyfMCa3GBojJ9+6C6ySoYF0thnEwdjraiGS3
	+Zd8bhS3k+dSh8UN4cWIkHEOs80241H9rB/mx8GPmmcCs9iI0XhYLDeyLC5rK2ftAvxiLyIrGiq0G
	srIAktmUcBI2bazgcVecLLVX/rGoyEn/6OOQ56uRHikruMemDVYUtobSGmsNSfJ3jsp6FaHhQ+l3K
	yCs5lcXcIzYNqUny6hTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jirgG-0000TO-21; Wed, 10 Jun 2020 03:45:36 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jirgC-0000Ss-NU
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 03:45:34 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200610034528epoutp02f867a14179fa334252de665a826bb06f~XEfLqLhMy0308903089epoutp02S
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 03:45:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200610034528epoutp02f867a14179fa334252de665a826bb06f~XEfLqLhMy0308903089epoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591760728;
 bh=hWPckxkTWxt02vlj7cdquIuZNkUZJkv44yU07klN4Ss=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=FKuYXMECxdJhU090eBEaqlX+kFVKmGzEBILq6/sSGm5HsQGnli0mAiLINJ1oWKz3Y
 2EkVq5ycRcSUV/ncHhzwlFhyiumVyYOVWq70dCCRkARhEF6cOwLvKjj1iWYlXZLNTi
 mXyHMTw7DPjRhNB39LGXWfyFab8SXSTx53xZb/Sk=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200610034527epcas1p240cb27139cf17ae964f62a0f5023efae~XEfKswct33130231302epcas1p29;
 Wed, 10 Jun 2020 03:45:27 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 49hXv90nRWzMqYkX; Wed, 10 Jun
 2020 03:45:25 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.2C.19033.45750EE5; Wed, 10 Jun 2020 12:45:25 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20200610034524epcas1p332ec073064eb8065753813f38983b39a~XEfIFCbKt0624706247epcas1p3E;
 Wed, 10 Jun 2020 03:45:24 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200610034524epsmtrp1821c207c04355a6fd886b29acd061545~XEfIER_9a1225312253epsmtrp1M;
 Wed, 10 Jun 2020 03:45:24 +0000 (GMT)
X-AuditID: b6c32a36-159ff70000004a59-4a-5ee0575405f5
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 15.90.08382.45750EE5; Wed, 10 Jun 2020 12:45:24 +0900 (KST)
Received: from [10.113.113.235] (unknown [10.113.113.235]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200610034524epsmtip1df52394729920c807789e6c8673b401a~XEfHsMKVL2151521515epsmtip1K;
 Wed, 10 Jun 2020 03:45:24 +0000 (GMT)
Subject: Re: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
To: Robin Murphy <robin.murphy@arm.com>, Jagan Teki
 <jagan@amarulasolutions.com>, Peng Fan <peng.fan@nxp.com>, Kever Yang
 <kever.yang@rock-chips.com>
From: Jaehoon Chung <jh80.chung@samsung.com>
Message-ID: <b46fe992-89d4-4a5f-fdb3-e2ec53de2b11@samsung.com>
Date: Wed, 10 Jun 2020 12:45:33 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIJsWRmVeSWpSXmKPExsWy7bCmnm5o+IM4g+dLGC2+bJrAZrFt+k82
 i+UT9rFZfHrwn9nix6ovrBYHPzxhtZh/ZR+rxdu9newOHB5rP95n9Vgzbw2jx9k7Oxg9Ni+p
 99j4bgeTx99Z+1kC2KKybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPISc1Nt
 lVx8AnTdMnOADlJSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW6BUn5haX5qXr
 JefnWhkaGBiZAhUmZGfMebeLqeC8WMX/3sIGxv9CXYycHBICJhL/z6xg7GLk4hAS2MEosbd/
 HTOE84lRouPXZXaQKiGBb4wS266KwHRcvb2dBaJoL6PEzn2/mSGK3jNKvF6jCGILC1hJ3P/2
 C2ySiMBMoOaeV4wgCWaBOokzp5+D2WwCOhLbvx1nArF5BewkjnxdxgpiswioSjz72Q1miwpE
 SBzvnswOUSMocXLmExYQm1PAWuL1tINQM8Ulbj2ZzwRhy0s0b50NtlhCYCaHxNM7d5ghznaR
 uDhxJzuELSzx6vgWKFtK4mV/G5RdLbGr+QxUcwejxK1tTUwQCWOJ/UsnA9kcQBs0Jdbv0ocI
 K0rs/D0X6gg+iXdfe1hBSiQEeCU62qDhqyJx6fVLJphVd5/8Z4WwPSQuLzvAPIFRcRaS12Yh
 eWcWkndmISxewMiyilEstaA4Nz212LDACDmyNzGC06qW2Q7GSW8/6B1iZOJgPMQowcGsJMJb
 /eBOnBBvSmJlVWpRfnxRaU5q8SFGU2BgT2SWEk3OByb2vJJ4Q1MjY2NjCxNDM1NDQyVxXjWZ
 C3FCAumJJanZqakFqUUwfUwcnFINTF6C8qsdEgtUpspY2qpEr3U6/cvqjo9RV/Wkm5nbcuw3
 /s3/s1/Wpn5S/9fAFdzsfNOEN/L95vHeZ2Osocu26K+D4p+QmRfu+39P1Nxlf6FKXrVma92J
 ndmqWzuYv34+PJXtQF1s1LnMvEsJ92rzTRn2q3eu1fF7o/E2sPOHS2e7+o2JZjlJjg1bHzTo
 6d26+Pmq4xzlvooN53/OVcuTWB88IX5ipjND+bM5ms3MT+cfTLz1admRoGSxKD73qOdqnO45
 h8szij9MqtBqrfGs8G3dmfiJb2NC/rLYXPElskq7XyblWnFJ5ORW32sJ9fNju+/Su7Uo8dNt
 pfkqKycfdHC5Wqvb2eL64sg7zc1KLMUZiYZazEXFiQAmtjMoNAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgkeLIzCtJLcpLzFFi42LZdlhJTjck/EGcwbtuUYsvmyawWWyb/pPN
 YvmEfWwWnx78Z7b4seoLq8XBD09YLeZf2cdq8XZvJ7sDh8faj/dZPdbMW8PocfbODkaPzUvq
 PTa+28Hk8XfWfpYAtigum5TUnMyy1CJ9uwSujDnvdjEVnBer+N9b2MD4X6iLkZNDQsBE4urt
 7SwgtpDAbkaJpV+ZIeJSEp+fTmXrYuQAsoUlDh8u7mLkAip5yyix+PlbJpAaYQErifvffjGD
 JEQEZjJK3L7fBzaIWaBOonXGNyaIjqOMEue2toEl2AR0JLZ/Ow7WzStgJ3Hk6zJWEJtFQFXi
 2c9uMFtUIEKi5f4fdogaQYmTM5+A9XIKWEu8nnaQEWKBusSfeZeYIWxxiVtP5jNB2PISzVtn
 M09gFJqFpH0WkpZZSFpmIWlZwMiyilEytaA4Nz232LDAMC+1XK84Mbe4NC9dLzk/dxMjOJK0
 NHcwbl/1Qe8QIxMH4yFGCQ5mJRHe6gd34oR4UxIrq1KL8uOLSnNSiw8xSnOwKInz3ihcGCck
 kJ5YkpqdmlqQWgSTZeLglGpgMt3fvDXkXJdZ+o1ArZsZQcwndtWvmvrsxjFGNd+p/yQ9HKW9
 jsxMm+OU+IbTbe3O8s1354lu75CPNjXdlXTLuq3ekGlhw/PNvGHpp8JXTl39evpe+6cfb7N7
 J5/dmZdtlnjzYO2Gy39CLITfBM0umXP2bV55PeecKnOzCq+tgrtFzqV275zVuCdcJOrsNPbf
 Ejd6UxatarGYnRohtSiDgSXzs8/VPS7L98ln5r+U5XH99m3VLevfJu9f/S1u/j9Jy/egpqiy
 YJvi7tJ55x5xLrBdU1pacmu28vlAxzOB22vuznOv/7XUO/Qru22clm5YKdfTkhxr1Ykb5Z1S
 ma7f3vYhSjRc+tcTb7fFku3XlViKMxINtZiLihMBPtnz5hMDAAA=
X-CMS-MailID: 20200610034524epcas1p332ec073064eb8065753813f38983b39a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200609143823epcas1p24772f20296869f9a7dc5ed53460ea0a4
References: <20200609140135.131887-1-jagan@amarulasolutions.com>
 <CGME20200609143823epcas1p24772f20296869f9a7dc5ed53460ea0a4@epcas1p2.samsung.com>
 <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_204533_012072_F6002667 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: u-boot@lists.denx.de, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gNi85LzIwIDExOjM4IFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjAyMC0wNi0wOSAx
NTowMSwgSmFnYW4gVGVraSB3cm90ZToKPj4gU0RIQ0kgSElTUEQgYml0cyBuZWVkIHRvIGJlIGNv
bmZpZ3VyZWQgYmFzZWQgb24gZGVzaXJlZCBtbWMKPj4gdGltaW5ncyBtb2RlIGFuZCBzb21lIEhJ
U1BEIHF1aXJrcy4KPj4KPj4gU28sIGhhbmRsZSB0aGUgSElTUEQgYml0IGJhc2VkIG9uIHRoZSBt
bWMgY29tcHV0ZWQgc2VsZWN0ZWQKPj4gbW9kZSh0aW1pbmcgcGFyYW1ldGVyKSByYXRoZXIgdGhh
biBmaXhlZCBtbWMgY2FyZCBjbG9jawo+PiBmcmVxdWVuY3kuCj4+Cj4+IExpbnV4IGhhbmRsZSB0
aGUgSElTUEQgc2ltaWxhciBsaWtlIHRoaXMgaW4gYmVsb3cgY29tbWl0LAo+Pgo+PiBjb21taXQg
PDUwMTYzOWJmMjE3Mz4gKCJtbWM6IHNkaGNpOiBmaXggU0RIQ0lfUVVJUktfTk9fSElTUERfQklU
IGhhbmRsaW5nIikKPj4KPj4gVGhpcyBldmVudHVhbGx5IGZpeGVkIHRoZSBtbWMgd3JpdGUgaXNz
dWUgb2JzZXJ2ZWQgaW4KPj4gcmszMzk5IHNkaGNpIGNvbnRyb2xsZXIuCj4+Cj4+IEJ1ZyBsb2cg
Zm9yIHJlZmVybmVjZSwKPj4gPT4gZ3B0IHdyaXRlIG1tYyAwICRwYXJ0aXRpb25zCj4+IFdyaXRp
bmcgR1BUOiBtbWMgd3JpdGUgZmFpbGVkCj4+ICoqIENhbid0IHdyaXRlIHRvIGRldmljZSAwICoq
Cj4+ICoqIENhbid0IHdyaXRlIHRvIGRldmljZSAwICoqCj4+IGVycm9yIQo+Pgo+PiBDYzogS2V2
ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPj4gQ2M6IFBlbmcgRmFuIDxwZW5n
LmZhbkBueHAuY29tPgo+PiBSZXZpZXdlZC1ieTogSmFlaG9vbiBDaHVuZyA8amg4MC5jaHVuZ0Bz
YW1zdW5nLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNv
bHV0aW9ucy5jb20+Cj4+IC0tLQo+PiBDaGFuZ2VzIGZvciB2MjoKPj4gLSBjb2xsZWN0IEphZWhv
b24gUi1iCj4+Cj4+IMKgIGRyaXZlcnMvbW1jL3NkaGNpLmMgfCAyMyArKysrKysrKysrKysrKyst
LS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL3NkaGNpLmMgYi9kcml2ZXJzL21t
Yy9zZGhjaS5jCj4+IGluZGV4IDkyY2M4NDM0YWYuLjI4MGI4Yzg4ZWIgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbW1jL3NkaGNpLmMKPj4gKysrIGIvZHJpdmVycy9tbWMvc2RoY2kuYwo+PiBAQCAt
NTk0LDE0ICs1OTQsMjEgQEAgc3RhdGljIGludCBzZGhjaV9zZXRfaW9zKHN0cnVjdCBtbWMgKm1t
YykKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RybCAmPSB+U0RIQ0lfQ1RSTF80QklU
QlVTOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgLcKgwqDCoCBpZiAobW1jLT5jbG9jayA+IDI2MDAw
MDAwKQo+PiAtwqDCoMKgwqDCoMKgwqAgY3RybCB8PSBTREhDSV9DVFJMX0hJU1BEOwo+PiAtwqDC
oMKgIGVsc2UKPj4gLcKgwqDCoMKgwqDCoMKgIGN0cmwgJj0gflNESENJX0NUUkxfSElTUEQ7Cj4+
IC0KPj4gLcKgwqDCoCBpZiAoKGhvc3QtPnF1aXJrcyAmIFNESENJX1FVSVJLX05PX0hJU1BEX0JJ
VCkgfHwKPj4gLcKgwqDCoMKgwqDCoMKgIChob3N0LT5xdWlya3MgJiBTREhDSV9RVUlSS19CUk9L
RU5fSElTUERfTU9ERSkpCj4+IC3CoMKgwqDCoMKgwqDCoCBjdHJsICY9IH5TREhDSV9DVFJMX0hJ
U1BEOwo+PiArwqDCoMKgIGlmICghKGhvc3QtPnF1aXJrcyAmIFNESENJX1FVSVJLX05PX0hJU1BE
X0JJVCkgfHwKPiAKPiBTaG91bGQgdGhhdCBiZSAiJiYiIHJhdGhlciB0aGFuICJ8fCI/IE90aGVy
d2lzZSB0aGlzIHdpbGwgYWx3YXlzIGV2YWx1YXRlIHRvIHRydWUgdW5sZXNzICpib3RoKiBxdWly
a3MgYXJlIHNldCwgd2hpY2ggaXNuJ3QgZXF1aXZhbGVudCB0byB0aGUgY2hlY2sgYmVpbmcgcmVt
b3ZlZCBhYm92ZS4KCgpZb3UncmUgcmlnaHQuCgo+IAo+IFJvYmluLgo+IAo+PiArwqDCoMKgwqDC
oMKgwqAgIShob3N0LT5xdWlya3MgJiBTREhDSV9RVUlSS19CUk9LRU5fSElTUERfTU9ERSkpIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChtbWMtPnNlbGVjdGVkX21vZGUgPT0gTU1DX0hTIHx8Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1tYy0+c2VsZWN0ZWRfbW9kZSA9PSBTRF9IUyB8fAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtbWMtPnNlbGVjdGVkX21vZGUgPT0gTU1DX0REUl81
MiB8fAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtbWMtPnNlbGVjdGVkX21vZGUgPT0gTU1D
X0hTXzIwMCB8fAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtbWMtPnNlbGVjdGVkX21vZGUg
PT0gTU1DX0hTXzQwMCB8fAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtbWMtPnNlbGVjdGVk
X21vZGUgPT0gVUhTX1NEUjI1IHx8Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1tYy0+c2Vs
ZWN0ZWRfbW9kZSA9PSBVSFNfU0RSNTAgfHwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW1j
LT5zZWxlY3RlZF9tb2RlID09IFVIU19TRFIxMDQgfHwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbW1jLT5zZWxlY3RlZF9tb2RlID09IFVIU19ERFI1MCkKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY3RybCB8PSBTREhDSV9DVFJMX0hJU1BEOwo+PiArwqDCoMKgwqDCoMKgwqAgZWxzZQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJsICY9IH5TREhDSV9DVFJMX0hJU1BEOwo+PiAr
wqDCoMKgIH0KPj4gwqAgwqDCoMKgwqDCoCBzZGhjaV93cml0ZWIoaG9zdCwgY3RybCwgU0RIQ0lf
SE9TVF9DT05UUk9MKTsKPj4gwqAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
