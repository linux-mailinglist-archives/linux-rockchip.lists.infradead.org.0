Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C55918C76D
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Mar 2020 07:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TI5p6Sv34UgaHrrN4t3C5x2Qp3AMRN1Ip+ekzKcyTWg=; b=cb78bdJpKzJssC
	ZBqLGwZxwztN82LNp52Oe0nqKMr1ONuPPZGgpdNGh5iRd6tVyEnYygFAlx2GLP2MYkLEsupBrDGQG
	I/3CN28CO38he/Ln/DRmt1RGdoFr70thUA15IluLDvXFAKVyAfnLLaSBVaodhLmEMSEvt3rClmzxn
	89tIOhiSBCJzVH5npOJiKdiBe4qmusoX0hU9jVf9vFigQ7oaymUs3u9APWBO2AHTYwckdUDFHXHPO
	9swA9ozUhXEQM7UjO9KGEXgQ4QszdJoNn17x7RZqRgu9JyNKs1AmdnUvAe6Lo2luofwhUdT/j2VQO
	esEx/6/aQz0CPDLutJrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFB8y-00054S-Qn; Fri, 20 Mar 2020 06:28:32 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFB8u-00051P-MV
 for linux-rockchip@lists.infradead.org; Fri, 20 Mar 2020 06:28:30 +0000
Received: by mail-il1-x141.google.com with SMTP id l14so4578928ilj.8
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2020 23:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iNXs70iQMmbCeWom+A/Tg16i/IbQyXAZI0Q/ppb6028=;
 b=mlwq4CYA+23qP9sIb47R10WlCGq2DIeqg0u1nZRI7nIlEwzdaBM16J0diAb1hlohhx
 6DmTCrAETojeuHxXASGkurUqmDfwjHRaPO4za7UkVii+FhFKjU1p/Uh7mi3KFwpjPhsb
 iUmifGiws8WLlb2N+d2f8DAIA3I+MwtdSl7QMUdRy6dZmidqOFzKWaoRrSqr4hGVvYFe
 lxvu2QhZ23+aceqTRPs5AhP4qiprkvMy5v6UfWHtbzwVFjivSqy8raQEj8IKp649aRSz
 OzRNio30MUjHUatFuFBVrSm+4Q22qFcnN1y399wmFgi4y40WUSo1BlDO9PO4lb7z5YMG
 C1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iNXs70iQMmbCeWom+A/Tg16i/IbQyXAZI0Q/ppb6028=;
 b=Fgxy9aVdWNfVVKibqsQfvs1FbE3zSr/HSraU6MCxIf3SvSW7SJKzidVNMV1//bdBNq
 gJHdegwr61drd/OAzJXSABm3ZDsVI5W8uNaMtqRPclxUBGaFqddHGGuDHuS7fFPNUU95
 G58EBkkzJrRTvCrU10i5xI+qWzmPJmyKCRHnfcN1Zo2wwkNQ9SFMSaItsw19Sy/j8aRD
 T2Ew6cwiVjVrzZETqDqVMSAArTngsUtwKzyTwZE6ca5Kl++cxtiP9kmuK4YFL1+qk8w0
 /nKP81E3h1FKepelNRulXy93WJVZCOR5gX1lk02gc/aIb2pqfWRXqWaCfR+P8uqQ2Z4o
 p/og==
X-Gm-Message-State: ANhLgQ1DM4/VL4rCrgrDmFysdUAbOE32nznXQNtu45m9l0lMsadQRMlW
 negY5AM2CELw6cEz8NQ1N+DiKIBXlkm2itIH2xbs1w==
X-Google-Smtp-Source: ADFU+vu5z05Ntsthh3MN1VmTHwq3rO5otoJoIS27t3cZsZdixT+HOBtJfxy3n0Krurf+ZkaYNXqDSZk62sBvXeLV7BQ=
X-Received: by 2002:a92:41c7:: with SMTP id o190mr6554977ila.11.1584685701013; 
 Thu, 19 Mar 2020 23:28:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191221150402.13868-1-murphyt7@tcd.ie> <87blrzwcn8.fsf@intel.com>
 <432d306c-fe9f-75b2-f0f7-27698f1467ad@arm.com> <87o8vzuv4i.fsf@intel.com>
In-Reply-To: <87o8vzuv4i.fsf@intel.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Thu, 19 Mar 2020 23:28:09 -0700
Message-ID: <CALQxJuujCe7TsqkbfusPnzef2SApDBNPa7wj=U4ozDJWCoBHOg@mail.gmail.com>
Subject: Re: [PATCH 0/8] Convert the intel iommu driver to the dma-iommu api
To: Jani Nikula <jani.nikula@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_232828_801874_535AF0FF 
X-CRM114-Status: GOOD (  25.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QW55IG5ld3Mgb24gdGhpcz8gSXMgdGhlcmUgYW55b25lIHdobyB3YW50cyB0byB0cnkgYW5kIGZp
eCB0aGlzIHBvc3NpYmxlIGJ1Zz8KCk9uIE1vbiwgMjMgRGVjIDIwMTkgYXQgMDM6NDEsIEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAy
MyBEZWMgMjAxOSwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4g
PiBPbiAyMDE5LTEyLTIzIDEwOjM3IGFtLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+PiBPbiBTYXQs
IDIxIERlYyAyMDE5LCBUb20gTXVycGh5IDxtdXJwaHl0N0B0Y2QuaWU+IHdyb3RlOgo+ID4+PiBU
aGlzIHBhdGNoc2V0IGNvbnZlcnRzIHRoZSBpbnRlbCBpb21tdSBkcml2ZXIgdG8gdGhlIGRtYS1p
b21tdSBhcGkuCj4gPj4+Cj4gPj4+IFdoaWxlIGNvbnZlcnRpbmcgdGhlIGRyaXZlciBJIGV4cG9z
ZWQgYSBidWcgaW4gdGhlIGludGVsIGk5MTUgZHJpdmVyCj4gPj4+IHdoaWNoIGNhdXNlcyBhIGh1
Z2UgYW1vdW50IG9mIGFydGlmYWN0cyBvbiB0aGUgc2NyZWVuIG9mIG15Cj4gPj4+IGxhcHRvcC4g
WW91IGNhbiBzZWUgYSBwaWN0dXJlIG9mIGl0IGhlcmU6Cj4gPj4+IGh0dHBzOi8vZ2l0aHViLmNv
bS9waXBweTM2MC9rZXJuZWxQYXRjaGVzL2Jsb2IvbWFzdGVyL0lNR18yMDE5MTIxOV8yMjU5MjIu
anBnCj4gPj4+Cj4gPj4+IFRoaXMgaXNzdWUgaXMgbW9zdCBsaWtlbHkgaW4gdGhlIGk5MTUgZHJp
dmVyIGFuZCBpcyBtb3N0IGxpa2VseSBjYXVzZWQKPiA+Pj4gYnkgdGhlIGRyaXZlciBub3QgcmVz
cGVjdGluZyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRoZQo+ID4+PiBkbWFfbWFwX29wczo6bWFwX3Nn
IGZ1bmN0aW9uLiBZb3UgY2FuIHNlZSB0aGUgZHJpdmVyIGlnbm9yaW5nIHRoZQo+ID4+PiByZXR1
cm4gdmFsdWUgaGVyZToKPiA+Pj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Js
b2IvN2UwMTY1YjJmMWE5MTJhMDZlMzgxZTkxZjBmNGU0OTVmNGFjMzczNi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMjTDUxCj4gPj4+Cj4gPj4+IFByZXZpb3VzbHkg
dGhpcyBkaWRu4oCZdCBjYXVzZSBpc3N1ZXMgYmVjYXVzZSB0aGUgaW50ZWwgbWFwX3NnIGFsd2F5
cwo+ID4+PiByZXR1cm5lZCB0aGUgc2FtZSBudW1iZXIgb2YgZWxlbWVudHMgYXMgdGhlIGlucHV0
IHNjYXR0ZXIgZ2F0aGVyIGxpc3QKPiA+Pj4gYnV0IHdpdGggdGhlIGNoYW5nZSB0byB0aGlzIGRt
YS1pb21tdSBhcGkgdGhpcyBpcyBubyBsb25nZXIgdGhlCj4gPj4+IGNhc2UuIEkgd2FzbuKAmXQg
YWJsZSB0byB0cmFjayB0aGUgYnVnIGRvd24gdG8gYSBzcGVjaWZpYyBsaW5lIG9mIGNvZGUKPiA+
Pj4gdW5mb3J0dW5hdGVseS4KPiA+Pj4KPiA+Pj4gQ291bGQgc29tZW9uZSBmcm9tIHRoZSBpbnRl
bCB0ZWFtIGxvb2sgYXQgdGhpcz8KPiA+Pgo+ID4+IExldCBtZSBnZXQgdGhpcyBzdHJhaWdodC4g
VGhlcmUgaXMgY3VycmVudCBBUEkgdGhhdCBvbiBzdWNjZXNzIGFsd2F5cwo+ID4+IHJldHVybnMg
dGhlIHNhbWUgbnVtYmVyIG9mIGVsZW1lbnRzIGFzIHRoZSBpbnB1dCBzY2F0dGVyIGdhdGhlcgo+
ID4+IGxpc3QuIFlvdSBwcm9wb3NlIHRvIGNoYW5nZSB0aGUgQVBJIHNvIHRoYXQgdGhpcyBpcyBu
byBsb25nZXIgdGhlIGNhc2U/Cj4gPgo+ID4gTm8sIHRoZSBBUEkgZm9yIGRtYV9tYXBfc2coKSBo
YXMgYWx3YXlzIGJlZW4gdGhhdCBpdCBtYXkgcmV0dXJuIGZld2VyCj4gPiBETUEgc2VnbWVudHMg
dGhhbiBuZW50cyAtIHNlZSBEb2N1bWVudGF0aW9uL0RNQS1BUEkudHh0IChhbmQgb3RoZXJ3aXNl
LAo+ID4gdGhlIHJldHVybiB2YWx1ZSB3b3VsZCBzdXJlbHkgYmUgYSBzaW1wbGUgc3VjY2Vzcy9m
YWlsIGNvbmRpdGlvbikuCj4gPiBSZWx5aW5nIG9uIGEgcGFydGljdWxhciBpbXBsZW1lbnRhdGlv
biBiZWhhdmlvdXIgaGFzIG5ldmVyIGJlZW4gc3RyaWN0bHkKPiA+IGNvcnJlY3QsIGV2ZW4gaWYg
aXQgZG9lcyBoYXBwZW4gdG8gYmUgYSB2ZXJ5IGNvbW1vbiBiZWhhdmlvdXIuCj4gPgo+ID4+IEEg
cXVpY2sgY2hlY2sgb2YgdmFyaW91cyBkbWFfbWFwX3NnKCkgY2FsbHMgaW4gdGhlIGtlcm5lbCBz
ZWVtcyB0bwo+ID4+IGluZGljYXRlIGNoZWNraW5nIGZvciAwIGZvciBlcnJvcnMgYW5kIHRoZW4g
aWdub3JpbmcgdGhlIG5vbi16ZXJvIHJldHVybgo+ID4+IGlzIGEgY29tbW9uIHBhdHRlcm4uIEFy
ZSB5b3Ugc3VyZSBpdCdzIG9rYXkgdG8gbWFrZSB0aGUgY2hhbmdlIHlvdSdyZQo+ID4+IHByb3Bv
c2luZz8KPiA+Cj4gPiBWYXJpb3VzIGNvZGUgdXNlcyB0cmlja3MgbGlrZSBqdXN0IGl0ZXJhdGlu
ZyB0aGUgbWFwcGVkIGxpc3QgdW50aWwgdGhlCj4gPiBmaXJzdCBzZWdtZW50IHdpdGggemVybyBz
Z19kbWFfbGVuKCkuIE90aGVycyBtYXkgd2VsbCBzaW1wbHkgaGF2ZSBidWdzLgo+Cj4gVGhhbmtz
IGZvciB0aGUgY2xhcmlmaWNhdGlvbi4KPgo+IEJSLAo+IEphbmkuCj4KPiA+Cj4gPiBSb2Jpbi4K
PiA+Cj4gPj4gQW55d2F5LCBkdWUgdG8gdGhlIHRpbWUgb2YgeWVhciBhbmQgYWxsLCBJJ2QgbGlr
ZSB0byBhc2sgeW91IHRvIGZpbGUgYQo+ID4+IGJ1ZyBhZ2FpbnN0IGk5MTUgYXQgWzFdIHNvIHRo
aXMgaXMgbm90IGZvcmdvdHRlbiwgYW5kIHBsZWFzZSBsZXQncyBub3QKPiA+PiBtZXJnZSB0aGUg
Y2hhbmdlcyBiZWZvcmUgdGhpcyBpcyByZXNvbHZlZC4KPiA+Pgo+ID4+Cj4gPj4gVGhhbmtzLAo+
ID4+IEphbmkuCj4gPj4KPiA+Pgo+ID4+IFsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy9uZXcKPiA+Pgo+ID4+Cj4KPiAtLQo+IEphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
