Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BC0127A3D
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Dec 2019 12:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOhtoY7NzYjBM/bX621Ph/r2/nR7alZylfZ0+1TtO+E=; b=quo1T0J5xXGfit
	eL39+C1mt9jp8DoQc53nHrull4MMiMl0aU/N18cRG0iXuesN2LzfKamzvrNe3gNpFhCbA/G7L13sY
	+TqqaezVZRHPi0Ct2oSgRXy7hCWy1xkCRtybyACB8aIBFKsmXInPlwrqMs6KpBgWTW4z250AACeXX
	Nz+7oQ942Or5Dh3r0VesHn+G3ae+/hHtg/IK+/OsXzfZlq4GGHif9/5Hi6F0ez6+7CaN8/QH7mhVn
	lbv5HnEuDRN/SbxibxiMYayR6kukQPbvxfbll7QifSP49R3+MEGtRiwfwkat9mBueonYerl9YmI0M
	AHgWQFrbf72jnpu0wTSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGnz-0000qE-4f; Fri, 20 Dec 2019 11:50:51 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGnl-0000hi-Vf; Fri, 20 Dec 2019 11:50:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKBoYQM012834;
 Fri, 20 Dec 2019 05:50:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576842634;
 bh=F5NzVoBOc0H3AQcimqUogeBFtzoUavarjXQ1aoFfC+w=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=UAzsxaeaHZa/6OX3d/fo2uAFhLLjO25PaTZG0YDWhMMaGMH8rWWv2O57BRHwOpUVh
 jQDc/OO/rXAXHSTHRlez4SQRqn+b+T7pNdCF3LGEdy8bvbRKJ0qdQvjIGky9milvMu
 vpfzhb3uZC1jmi57D40RpZ5qWbFHJ9XGlyFHix+A=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBKBoX41111098
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 05:50:34 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 05:50:33 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 05:50:33 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKBoUCE033381;
 Fri, 20 Dec 2019 05:50:31 -0600
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip,px30-dsi-dphy
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20191216122448.27867-1-heiko@sntech.de>
 <12525836.FhlgEYrHGb@diego> <45c59145-5705-90f9-ff0e-c84cf8d17e8b@ti.com>
 <3795174.JdKOkfR0EK@diego>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <400d28a9-6ae3-5ff3-8d95-005714cfca33@ti.com>
Date: Fri, 20 Dec 2019 17:22:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <3795174.JdKOkfR0EK@diego>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_035038_103247_320F4AEB 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiAyMC8xMi8xOSA1OjA3IHBtLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBLaXNo
b24sCj4gCj4gQW0gRnJlaXRhZywgMjAuIERlemVtYmVyIDIwMTksIDEyOjIxOjI4IENFVCBzY2hy
aWViIEtpc2hvbiBWaWpheSBBYnJhaGFtIEk6Cj4+Cj4+IE9uIDE2LzEyLzE5IDExOjMxIHBtLCBI
ZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEhpIFJvYiwKPj4+Cj4+PiBBbSBNb250YWcsIDE2LiBE
ZXplbWJlciAyMDE5LCAxODo1NjoxNSBDRVQgc2NocmllYiBSb2IgSGVycmluZzoKPj4+PiBPbiBN
b24sIDE2IERlYyAyMDE5IDEzOjI0OjQ3ICswMTAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4+
Pj4gRnJvbTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQHRoZW9icm9tYS1zeXN0ZW1z
LmNvbT4KPj4+Pj4KPj4+Pj4gRnVydGhlciByZXZpZXcgb2YgdGhlIGRzaSBjb21wb25lbnRzIGZv
ciB0aGUgcHgzMCByZXZlYWxlZCB0aGF0IHRoZQo+Pj4+PiBwaHkgc2hvdWxkbid0IGV4cG9zZSB0
aGUgcGxsIGFzIGNsb2NrIGJ1dCBpbnN0ZWFkIGhhbmRsZSBzZXR0aW5ncwo+Pj4+PiB2aWEgcGh5
IHBhcmFtZXRlcnMuCj4+Pj4+Cj4+Pj4+IEFzIHRoZSBwaHkgYmluZGluZyBpcyBuZXcgYW5kIG5v
dCB1c2VkIGFueXdoZXJlIHlldCwganVzdCBkcm9wIHRoZW0KPj4+Pj4gc28gdGhleSBkb24ndCBn
ZXQgdXNlZC4KPj4+Pj4KPj4+Pj4gRml4ZXM6IDM4MTdjNzk2MTE3OSAoImR0LWJpbmRpbmdzOiBw
aHk6IGFkZCB5YW1sIGJpbmRpbmcgZm9yIHJvY2tjaGlwLHB4MzAtZHNpLWRwaHkiKQo+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAdGhlb2Jyb21hLXN5
c3RlbXMuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gSGkgS2lzaG9uLAo+Pj4+Pgo+Pj4+PiBtYXliZSBz
dWl0YWJsZSBhcyBhIGZpeCBmb3IgNS41LXJjPwo+Pj4+Pgo+Pj4+PiBUaGFua3MKPj4+Pj4gSGVp
a28KPj4+Pj4KPj4+Pj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxweDMw
LWRzaS1kcGh5LnlhbWwgICAgICB8IDUgLS0tLS0KPj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGRl
bGV0aW9ucygtKQo+Pj4+Pgo+Pj4+Cj4+Pj4gUGxlYXNlIGFkZCBBY2tlZC1ieS9SZXZpZXdlZC1i
eSB0YWdzIHdoZW4gcG9zdGluZyBuZXcgdmVyc2lvbnMuIEhvd2V2ZXIsCj4+Pj4gdGhlcmUncyBu
byBuZWVkIHRvIHJlcG9zdCBwYXRjaGVzICpvbmx5KiB0byBhZGQgdGhlIHRhZ3MuIFRoZSB1cHN0
cmVhbQo+Pj4+IG1haW50YWluZXIgd2lsbCBkbyB0aGF0IGZvciBhY2tzIHJlY2VpdmVkIG9uIHRo
ZSB2ZXJzaW9uIHRoZXkgYXBwbHkuCj4+Pj4KPj4+PiBJZiBhIHRhZyB3YXMgbm90IGFkZGVkIG9u
IHB1cnBvc2UsIHBsZWFzZSBzdGF0ZSB3aHkgYW5kIHdoYXQgY2hhbmdlZC4KPj4+Cj4+PiBzb3Jy
eSBhYm91dCB0aGF0LiBUaGUgb3JpZ2luYWwgcmVzcG9uc2Ugc29tZWhvdyBkaWQgbm90IHRocmVh
ZCBjb3JyZWN0bHkKPj4+IGluIG15IG1haWwgY2xpZW50LCBwcm9iYWJseSBzb21lIGZhdWx0IG9u
IG15IHNpZGUsIHNvIEkndmUgb25seSBmb3VuZCB5b3VyCj4+PiBtYWlsIGp1c3Qgbm93IGJ5IGRp
Z2dpbmcgaGFyZC4KPj4+Cj4+PiBAS2lzaG9uLCB0aGUgb3JpZ2luYWwgbWFpbCBhbHJlYWR5IGdv
dCBhbgo+Pj4KPj4+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+Pgo+
PiBtZXJnZWQgbm93LCBUaGFua3MhCj4gCj4gdGhhbmtzIC4uLiBqdXN0IHRvIG1ha2Ugc3VyZSwg
ZGlkIHlvdSBhbHNvIHNlZSB0aGUgZHJpdmVyIGNoYW5nZXMgaW4gcGF0Y2gyPwo+IEFzIEkgZG9u
J3Qgc2VlIHRoZW0gaW4gZWl0aGVyIG9mIHlvdXIgYnJhbmNoZXMgOi0pCgpGb3Igc29tZSByZWFz
b24sIHBhdGNoIDIgb2YgdGhlICJSRVNFTkQiIHNlcmllcyBpcyBub3QgaW4gbXkgaW5ib3guCkhv
d2V2ZXIgbG9va2luZyBhdCB5b3VyIG9yaWdpbmFsIHNlcmllcywgbG9va3MgbGlrZSB0aGlzIGlz
IGEgY2FuZGlkYXRlCmZvciA1LjYuIEknbGwgdGFrZSBwYXRjaCAyIGZyb20geW91ciBvcmlnaW5h
bCBzZXJpZXMuCgpUaGFua3MKS2lzaG9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
