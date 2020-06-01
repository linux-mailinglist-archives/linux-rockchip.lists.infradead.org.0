Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE3B1EB216
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jun 2020 01:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=thNo5b++fJ+AW8ywGmzodKT5Z8yMr5DwBl3z6HYxfnc=; b=tHX3jnV6qQksLhCKX3ueDs8C4
	3g6TXR3XjhqbnAqqpCgpI3HhHeyoyDj3n+yjP1UOU+7DihcxJn+LI6+4pQudCyeFqXhYykH6GxcJJ
	YsVuhdlrLOJfG1sVkfjb0XTKkVPgJeOF6BzHY0gPtgEsy5iASNQet/3GlUh/z9vz0stqxP30VtRdH
	kVBORwppA9T6yhsQlq1NdCXCeVK0Shk133GeaQkBbK/XYHJ0q2z0BEfuaCBTewM2n+KT4Z5qGZtmG
	GUm2iTz7v9jDzhpQAIRhb1/+k8J00nnAx7ga5Q0CvMPq8S3yTuo7VmQXZefKsRzmMqQCjNGKskHOu
	vqEUOVrxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jftj9-00012H-Do; Mon, 01 Jun 2020 23:20:19 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jftj6-00010v-EN; Mon, 01 Jun 2020 23:20:17 +0000
IronPort-SDR: Xte9pdTqMIxMiMMlp0IFGvwQ02eRwzX7tzs4yYVN8aLd33DGrG5Ffxc2jzTGCWgUsM1V/hozKP
 b6rmfU0rjaBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 16:20:15 -0700
IronPort-SDR: hQbV32JOyjOGeuv1Q2ujjMc5qE5l9DREIL4uxk9IfntVO/uJuHc/R3pmYZg2c3JGkkmIfxg4ig
 Vk416qdU8nMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="293360328"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jun 2020 16:20:10 -0700
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, David Woodhouse
 <dwmw2@infradead.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200529221623.qc6twmpzryh7nkvb@cantor>
 <20200601104240.7f5xhz7gooqhaq4n@cantor>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <47711845-98ee-95b8-aa95-423a36ed9741@linux.intel.com>
Date: Tue, 2 Jun 2020 07:16:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200601104240.7f5xhz7gooqhaq4n@cantor>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_162016_497291_59BD9663 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmVycnksCgpPbiA2LzEvMjAgNjo0MiBQTSwgSmVycnkgU25pdHNlbGFhciB3cm90ZToKPj4K
Pj4gSGkgSm9lcmcsCj4+Cj4+IFdpdGggdGhpcyBwYXRjaHNldCwgSSBoYXZlIGFuIGVweWMgc3lz
dGVtIHdoZXJlIGlmIEkgYm9vdCB3aXRoCj4+IGlvbW11PW5vcHQgYW5kIGZvcmNlIGEgZHVtcCBJ
IHdpbGwgc2VlIHNvbWUgaW8gcGFnZSBmYXVsdHMgZm9yIGEgbmljCj4+IG9uIHRoZSBzeXN0ZW0u
IFRoZSB2bWNvcmUgaXMgaGFydmVzdGVkIGFuZCB0aGUgc3lzdGVtIHJlYm9vdHMuIEkKPj4gaGF2
ZW4ndCByZXByb2R1Y2VkIGl0IG9uIG90aGVyIHN5c3RlbXMgeWV0LCBidXQgd2l0aG91dCB0aGUg
cGF0Y2hzZXQgSQo+PiBkb24ndCBzZWUgdGhlIGlvIHBhZ2UgZmF1bHRzIGR1cmluZyB0aGUga2R1
bXAuCj4+Cj4+IFJlZ2FyZHMsCj4+IEplcnJ5Cj4gCj4gSSBqdXN0IGhpdCBhbiBpc3N1ZSBvbiBh
IHNlcGFyYXRlIGludGVsIGJhc2VkIHN5c3RlbSAoa2R1bXAgaW9tbXU9bm9wdCksCj4gd2hlcmUg
aXQgcGFuaWNzIGluIGR1cmluZyBpbnRlbF9pb21tdV9hdHRhY2hfZGV2aWNlLCBpbiBpc19hdXhf
ZG9tYWluLAo+IGR1ZSB0byBkZXZpY2VfZG9tYWluX2luZm8gYmVpbmcgREVGRVJfREVWSUNFX0RP
TUFJTl9JTkZPLiBUaGF0IGRvZXNuJ3QKPiBnZXQgc2V0IHRvIGEgdmFsaWQgYWRkcmVzcyB1bnRp
bCB0aGUgZG9tYWluX2FkZF9kZXZfaW5mbyBjYWxsLgo+IAo+IElzIGl0IGFzIHNpbXBsZSBhcyB0
aGUgZm9sbG93aW5nPwoKSSBndWVzcyB5b3Ugd29uJ3QgaGl0IHRoaXMgaXNzdWUgaWYgeW91IHVz
ZSBpb21tdS9uZXh0IGJyYW5jaCBvZiBKb2VyZydzCnRyZWUuIFdlJ3ZlIGNoYW5nZWQgdG8gdXNl
IGEgZ2VuZXJpYyBoZWxwZXIgdG8gcmV0cmlldmUgdGhlIHZhbGlkIHBlcgpkZXZpY2UgaW9tbXUg
ZGF0YSBvciBOVUxMIChpZiB0aGVyZSdzIG5vKS4KCkJlc3QgcmVnYXJkcywKYmFvbHUKCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUuYyBiL2RyaXZlcnMvaW9tbXUv
aW50ZWwtaW9tbXUuYwo+IGluZGV4IDI5ZDM5NDA4NDdkMy4uZjFiYmVlZDQ2YTRjIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUuYwo+ICsrKyBiL2RyaXZlcnMvaW9tbXUv
aW50ZWwtaW9tbXUuYwo+IEBAIC01MDUzLDggKzUwNTMsOCBAQCBpc19hdXhfZG9tYWluKHN0cnVj
dCBkZXZpY2UgKmRldiwgc3RydWN0IAo+IGlvbW11X2RvbWFpbiAqZG9tYWluKQo+ICDCoHsKPiAg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IGRldmljZV9kb21haW5faW5mbyAqaW5mbyA9IGRldi0+YXJj
aGRhdGEuaW9tbXU7Cj4gCj4gLcKgwqDCoMKgwqDCoCByZXR1cm4gaW5mbyAmJiBpbmZvLT5hdXhk
X2VuYWJsZWQgJiYKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZG9tYWluLT50eXBlID09IElPTU1VX0RPTUFJTl9VTk1BTkFHRUQ7Cj4gK8KgwqDCoMKgwqDC
oCByZXR1cm4gaW5mbyAmJiBpbmZvICE9IERFRkVSX0RFVklDRV9ET01BSU5fSU5GTyAmJgo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGluZm8tPmF1eGRfZW5hYmxlZCAmJiBkb21haW4t
PnR5cGUgPT0gCj4gSU9NTVVfRE9NQUlOX1VOTUFOQUdFRDsKPiAgwqB9Cj4gCj4gIMKgc3RhdGlj
IHZvaWQgYXV4aWxpYXJ5X2xpbmtfZGV2aWNlKHN0cnVjdCBkbWFyX2RvbWFpbiAqZG9tYWluLAo+
IAo+IAo+IFJlZ2FyZHMsCj4gSmVycnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
