Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EA21EB279
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jun 2020 02:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HT4BJU2QWx9wzSYqagSbr6x5gs8JbOpv6R43PJatMVM=; b=Xym0+/TvZvQIyp8R3ICkKCMqO
	ohSHg3bTTzto8Ztp/bxXJTq60i3XlCLq5eLzB942yxX/kZsu9sqJ082f+IyMbl+i2/lOuxsDDtcta
	DIICzFF3TnVIjYnQUi1Sc1bN9g+RlLkIDMmqi3/v1k2dTokB77uTm+8u4w9wrRhhyXYQ14GZ4Leg8
	QTvRHDtMWn6anDT1nFzbpb2dMbhDnu+YZ6Qu00Jr43/jk7XFTECPVJcRzsP30QlIypmAW96W37SPy
	RnTxg+NTjo2OSSBLoKVXQO6WkZIVorSlHqGo9dH5x5818O8NSH/ReV2V9/HLFeljI+wKmhAYZnoDZ
	HRHHYsWAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfuOQ-00012y-VA; Tue, 02 Jun 2020 00:02:58 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfuOM-00010X-Rx
 for linux-rockchip@lists.infradead.org; Tue, 02 Jun 2020 00:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591056171;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WEgguSwsSBQsO87++CE0y1rNffa4jp9PI1ZebsV4DLs=;
 b=VXwBKN5fbxKEnQk7tepgmnRafXsdL3DFCGVDZPAKPK1xSamLzs1wZQQHelY/dFcePVo22x
 2+G8JyoEcWt+Xn9G2vqFeIt9wNa++avI+NnFbchuvGdOL0xES6XvXeGnmCjveo2wUdeuJO
 /lOqhi2W6XkAyB03ZYoX/ckauGaqyM4=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-1nIy5easPXumNBXnbpg1CQ-1; Mon, 01 Jun 2020 20:02:39 -0400
X-MC-Unique: 1nIy5easPXumNBXnbpg1CQ-1
Received: by mail-qk1-f197.google.com with SMTP id h18so8283356qkj.13
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 17:02:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=WEgguSwsSBQsO87++CE0y1rNffa4jp9PI1ZebsV4DLs=;
 b=RS2MN9YFsr67r0QqfMhoY0Kd86tdRO4ebjCzit2+Tq7OQGID6692PfTr04o1NxZAVe
 UakR76ehOpUSdrrrKhFGdGGUHS/FvuRsicf5IWJ80iLnJdztgEVcbHO3W8e8Y3vsokNV
 rfnpKgRtla5hLyqq2WWUpxw3gburGi27fO00ikfzv1CLF6VgmDRhmRFgAjBPSpT2Mmi0
 lmjBTiNywEk+24jysjQVap6enwgwpTbL0l7pdHR/eK40P5Dy17WKoojotTrURKPIn9ms
 M0s8z/BcVzDikoPSZariJFrmubPa5XOHFU8p5M+aCagIaI771e5jShu8W551L0dkrihz
 KbYg==
X-Gm-Message-State: AOAM533+lGZ3hyvRM52ci9PJsMIRglkznfZkr7bY7hWvY/DmXmjo3ATs
 srx7gwDnL5Fw1kW7suYG2OyeVEkBnZsas3ZkaLU1XRfQzs/27LuaKN2C6pXdFlRtQwtaW2NHYiA
 w+LE2feuEe4Mfwpght8N3MNm3aucZrDwV
X-Received: by 2002:ac8:724c:: with SMTP id l12mr23746245qtp.259.1591056159433; 
 Mon, 01 Jun 2020 17:02:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwRFkXYMc6X8G+o56RMfYFp5n8699HmlGFcYOLIr9n0Jz/P369Z9v//wIL4kQ8Ioy89XjW8QQ==
X-Received: by 2002:ac8:724c:: with SMTP id l12mr23746213qtp.259.1591056159140; 
 Mon, 01 Jun 2020 17:02:39 -0700 (PDT)
Received: from localhost (ip70-163-223-149.ph.ph.cox.net. [70.163.223.149])
 by smtp.gmail.com with ESMTPSA id t13sm852903qtc.77.2020.06.01.17.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 17:02:37 -0700 (PDT)
Date: Mon, 1 Jun 2020 17:02:36 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
Message-ID: <20200602000236.j4m3jvluzdhjngdc@cantor>
Mail-Followup-To: Lu Baolu <baolu.lu@linux.intel.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200529221623.qc6twmpzryh7nkvb@cantor>
 <20200601104240.7f5xhz7gooqhaq4n@cantor>
 <47711845-98ee-95b8-aa95-423a36ed9741@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <47711845-98ee-95b8-aa95-423a36ed9741@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_170255_129555_B36E4938 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Jerry Snitselaar <jsnitsel@redhat.com>
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-kernel@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlIEp1biAwMiAyMCwgTHUgQmFvbHUgd3JvdGU6Cj5IaSBKZXJyeSwKPgo+T24gNi8xLzIw
IDY6NDIgUE0sIEplcnJ5IFNuaXRzZWxhYXIgd3JvdGU6Cj4+Pgo+Pj5IaSBKb2VyZywKPj4+Cj4+
PldpdGggdGhpcyBwYXRjaHNldCwgSSBoYXZlIGFuIGVweWMgc3lzdGVtIHdoZXJlIGlmIEkgYm9v
dCB3aXRoCj4+PmlvbW11PW5vcHQgYW5kIGZvcmNlIGEgZHVtcCBJIHdpbGwgc2VlIHNvbWUgaW8g
cGFnZSBmYXVsdHMgZm9yIGEgbmljCj4+Pm9uIHRoZSBzeXN0ZW0uIFRoZSB2bWNvcmUgaXMgaGFy
dmVzdGVkIGFuZCB0aGUgc3lzdGVtIHJlYm9vdHMuIEkKPj4+aGF2ZW4ndCByZXByb2R1Y2VkIGl0
IG9uIG90aGVyIHN5c3RlbXMgeWV0LCBidXQgd2l0aG91dCB0aGUgcGF0Y2hzZXQgSQo+Pj5kb24n
dCBzZWUgdGhlIGlvIHBhZ2UgZmF1bHRzIGR1cmluZyB0aGUga2R1bXAuCj4+Pgo+Pj5SZWdhcmRz
LAo+Pj5KZXJyeQo+Pgo+PkkganVzdCBoaXQgYW4gaXNzdWUgb24gYSBzZXBhcmF0ZSBpbnRlbCBi
YXNlZCBzeXN0ZW0gKGtkdW1wIGlvbW11PW5vcHQpLAo+PndoZXJlIGl0IHBhbmljcyBpbiBkdXJp
bmcgaW50ZWxfaW9tbXVfYXR0YWNoX2RldmljZSwgaW4gaXNfYXV4X2RvbWFpbiwKPj5kdWUgdG8g
ZGV2aWNlX2RvbWFpbl9pbmZvIGJlaW5nIERFRkVSX0RFVklDRV9ET01BSU5fSU5GTy4gVGhhdCBk
b2Vzbid0Cj4+Z2V0IHNldCB0byBhIHZhbGlkIGFkZHJlc3MgdW50aWwgdGhlIGRvbWFpbl9hZGRf
ZGV2X2luZm8gY2FsbC4KPj4KPj5JcyBpdCBhcyBzaW1wbGUgYXMgdGhlIGZvbGxvd2luZz8KPgo+
SSBndWVzcyB5b3Ugd29uJ3QgaGl0IHRoaXMgaXNzdWUgaWYgeW91IHVzZSBpb21tdS9uZXh0IGJy
YW5jaCBvZiBKb2VyZydzCj50cmVlLiBXZSd2ZSBjaGFuZ2VkIHRvIHVzZSBhIGdlbmVyaWMgaGVs
cGVyIHRvIHJldHJpZXZlIHRoZSB2YWxpZCBwZXIKPmRldmljZSBpb21tdSBkYXRhIG9yIE5VTEwg
KGlmIHRoZXJlJ3Mgbm8pLgo+Cj5CZXN0IHJlZ2FyZHMsCj5iYW9sdQo+CgpZZWFoLCB0aGF0IHdp
bGwgc29sdmUgdGhlIHBhbmljLiAKCj4+Cj4+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvaW50
ZWwtaW9tbXUuYyBiL2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUuYwo+PmluZGV4IDI5ZDM5NDA4
NDdkMy4uZjFiYmVlZDQ2YTRjIDEwMDY0NAo+Pi0tLSBhL2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9t
bXUuYwo+PisrKyBiL2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUuYwo+PkBAIC01MDUzLDggKzUw
NTMsOCBAQCBpc19hdXhfZG9tYWluKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IAo+PmlvbW11
X2RvbWFpbiAqZG9tYWluKQo+PiDCoHsKPj4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRldmljZV9k
b21haW5faW5mbyAqaW5mbyA9IGRldi0+YXJjaGRhdGEuaW9tbXU7Cj4+Cj4+LcKgwqDCoMKgwqDC
oCByZXR1cm4gaW5mbyAmJiBpbmZvLT5hdXhkX2VuYWJsZWQgJiYKPj4twqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG9tYWluLT50eXBlID09IElPTU1VX0RPTUFJ
Tl9VTk1BTkFHRUQ7Cj4+K8KgwqDCoMKgwqDCoCByZXR1cm4gaW5mbyAmJiBpbmZvICE9IERFRkVS
X0RFVklDRV9ET01BSU5fSU5GTyAmJgo+PivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlu
Zm8tPmF1eGRfZW5hYmxlZCAmJiBkb21haW4tPnR5cGUgPT0gCj4+SU9NTVVfRE9NQUlOX1VOTUFO
QUdFRDsKPj4gwqB9Cj4+Cj4+IMKgc3RhdGljIHZvaWQgYXV4aWxpYXJ5X2xpbmtfZGV2aWNlKHN0
cnVjdCBkbWFyX2RvbWFpbiAqZG9tYWluLAo+Pgo+Pgo+PlJlZ2FyZHMsCj4+SmVycnkKPl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5pb21tdSBtYWlsaW5n
IGxpc3QKPmlvbW11QGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnCj5odHRwczovL2xpc3RzLmxp
bnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9pb21tdQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
