Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5CA1289E6
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 16:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JqcSqzqq8y7weW5LZOVq079LWuDR8IkZNyRCkCjv6iI=; b=jkeJfxhEcBr6Ek
	wSL03StEOlxx5NW8dx3Ffw7GnHkjptYLa0Gs4oaOYoqdms1M5db/+X/SeE4nRSu4GDsD5r0FpA4q3
	KBIsGjz0lwwaBeFA5QkzqE0fOimsIFKTs2GeEPTiriyVnGwUShd9JlmuPRBidfOaLuj9AjQMrg5Hk
	KdkRILxM+T5jM0jVY6TL22fP9EXYsvmrKGQTLkregQyVsseYOIOF7sfGj3nTobdbIQ2IhxfxNLAmU
	TBXVibLFClVMAtwumBrPKbMjoGO17HOXsweVZaPQ0r5M1hyuYvAoyUgwxlVXwNvUCq1drZ9WsNOSF
	aIwN0R41QbCNFmHtZpKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iigJG-0007o3-8x; Sat, 21 Dec 2019 15:04:50 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iigIk-0007WZ-Rt
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 15:04:22 +0000
Received: by mail-ed1-x542.google.com with SMTP id c26so11385784eds.8
 for <linux-rockchip@lists.infradead.org>; Sat, 21 Dec 2019 07:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wrv1jKXMHqqWHNzOL/6EYVPe/DHxphPiIOsjGB9s2BI=;
 b=neV87FDzcGxEtXMGvHrtTmbUOLtYtU+7I9MOQqfdQ+hsUXA8p8rI9n+KxmtaOLCADC
 oqzQwM+E41sGIEhE26+tkV5wTeVqusoqBdHCsFTHLhlkaDp++P9e9+/8rjVQr/Wsf9hN
 kPbAbKsiSsT63+7OMPlwjagzVfM0swjA056jVZJc1EqBSggoujvgAZK6bAD1VYJYtXeD
 ft7DHsq/EkMf9BhDvmD36g1hqGBWyqNIVG1DfNnWrfT4s1zi4GMzfbjEz0QIobV6kmY1
 laD6eUJQwGoQ0UWRg2PHTAA5VDA0M3C2Amsc74c9QymUHI36GRshkavBOusZCLhvlyeT
 csig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wrv1jKXMHqqWHNzOL/6EYVPe/DHxphPiIOsjGB9s2BI=;
 b=A8EoAloLng9XaJQxNysXajHV/yiyT778oPsj6DBOGlD9I1JO7PBJnB7PaM7F2Nji48
 XhoXy7ptFdadqnIBczgxWZS/uBqm8MwgHeatKih2WsxO7sy7Xz306RC/pouqNxU0Mwfu
 3CNKyY7LJWCnzFLNEl8Gg/wuKGeEQ3E9XwD2JbjgEeiFLUZg8MO24yCajQk0jZUSAZZc
 QNqFU1xwFzstZ+KIEguJWnhxIZEv8p6vN8CNlxlwsI7xu7jwzwohc1NdRQQ9iyl0npki
 0tclr+CXHfTmIZB7S2kG+J2nCswdsIsD96C7VILYyNiEcFiAm4QR144kQWUJV0fRT+XK
 w3Xg==
X-Gm-Message-State: APjAAAXeQW6yK77VFHiYRY+ec1N7XGqSeHDPXOKSljziLEBTkKswaryF
 Hyb19LdR3YnFUbglxrfqb6igkw==
X-Google-Smtp-Source: APXvYqzVFV+nAZt2efpFSBwn8fHDfarT+lNLK2u/m6P0Ib5tJlSKcUyhpXmrMgKd3Rdn4f4Yf8qeow==
X-Received: by 2002:a17:906:2e53:: with SMTP id
 r19mr22235209eji.306.1576940652743; 
 Sat, 21 Dec 2019 07:04:12 -0800 (PST)
Received: from localhost.localdomain ([80.233.37.20])
 by smtp.googlemail.com with ESMTPSA id u13sm1517639ejz.69.2019.12.21.07.04.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 07:04:12 -0800 (PST)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 0/8] Convert the intel iommu driver to the dma-iommu api
Date: Sat, 21 Dec 2019 15:03:52 +0000
Message-Id: <20191221150402.13868-1-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_070418_901333_BE69816A 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaHNldCBjb252ZXJ0cyB0aGUgaW50ZWwgaW9tbXUgZHJpdmVyIHRvIHRoZSBkbWEt
aW9tbXUgYXBpLgoKV2hpbGUgY29udmVydGluZyB0aGUgZHJpdmVyIEkgZXhwb3NlZCBhIGJ1ZyBp
biB0aGUgaW50ZWwgaTkxNSBkcml2ZXIgd2hpY2ggY2F1c2VzIGEgaHVnZSBhbW91bnQgb2YgYXJ0
aWZhY3RzIG9uIHRoZSBzY3JlZW4gb2YgbXkgbGFwdG9wLiBZb3UgY2FuIHNlZSBhIHBpY3R1cmUg
b2YgaXQgaGVyZToKaHR0cHM6Ly9naXRodWIuY29tL3BpcHB5MzYwL2tlcm5lbFBhdGNoZXMvYmxv
Yi9tYXN0ZXIvSU1HXzIwMTkxMjE5XzIyNTkyMi5qcGcKClRoaXMgaXNzdWUgaXMgbW9zdCBsaWtl
bHkgaW4gdGhlIGk5MTUgZHJpdmVyIGFuZCBpcyBtb3N0IGxpa2VseSBjYXVzZWQgYnkgdGhlIGRy
aXZlciBub3QgcmVzcGVjdGluZyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRoZSBkbWFfbWFwX29wczo6
bWFwX3NnIGZ1bmN0aW9uLiBZb3UgY2FuIHNlZSB0aGUgZHJpdmVyIGlnbm9yaW5nIHRoZSByZXR1
cm4gdmFsdWUgaGVyZToKaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvN2Uw
MTY1YjJmMWE5MTJhMDZlMzgxZTkxZjBmNGU0OTVmNGFjMzczNi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMjTDUxCgpQcmV2aW91c2x5IHRoaXMgZGlkbuKAmXQgY2F1
c2UgaXNzdWVzIGJlY2F1c2UgdGhlIGludGVsIG1hcF9zZyBhbHdheXMgcmV0dXJuZWQgdGhlIHNh
bWUgbnVtYmVyIG9mIGVsZW1lbnRzIGFzIHRoZSBpbnB1dCBzY2F0dGVyIGdhdGhlciBsaXN0IGJ1
dCB3aXRoIHRoZSBjaGFuZ2UgdG8gdGhpcyBkbWEtaW9tbXUgYXBpIHRoaXMgaXMgbm8gbG9uZ2Vy
IHRoZSBjYXNlLiBJIHdhc27igJl0IGFibGUgdG8gdHJhY2sgdGhlIGJ1ZyBkb3duIHRvIGEgc3Bl
Y2lmaWMgbGluZSBvZiBjb2RlIHVuZm9ydHVuYXRlbHkuICAKCkNvdWxkIHNvbWVvbmUgZnJvbSB0
aGUgaW50ZWwgdGVhbSBsb29rIGF0IHRoaXM/CgoKSSBoYXZlIGJlZW4gdGVzdGluZyBvbiBhIGxl
bm92byB4MSBjYXJib24gNXRoIGdlbmVyYXRpb24uIExldCBtZSBrbm93IGlmIHRoZXJl4oCZcyBh
bnkgbW9yZSBpbmZvcm1hdGlvbiB5b3UgbmVlZC4KClRvIGFsbG93IG15IHBhdGNoIHNldCB0byBi
ZSB0ZXN0ZWQgSSBoYXZlIGFkZGVkIGEgcGF0Y2ggKHBhdGNoIDgvOCkgaW4gdGhpcyBzZXJpZXMg
dG8gZGlzYWJsZSBjb21iaW5pbmcgc2cgc2VnbWVudHMgaW4gdGhlIGRtYS1pb21tdSBhcGkgd2hp
Y2ggZml4ZXMgdGhlIGJ1ZyBidXQgaXQgZG9lc24ndCBmaXggdGhlIGFjdHVhbCBwcm9ibGVtLgoK
QXMgcGFydCBvZiB0aGlzIHBhdGNoIHNlcmllcyBJIGNvcGllZCB0aGUgaW50ZWwgYm91bmNlIGJ1
ZmZlciBjb2RlIHRvIHRoZSBkbWEtaW9tbXUgcGF0aC4gVGhlIGFkZGl0aW9uIG9mIHRoZSBib3Vu
Y2UgYnVmZmVyIGNvZGUgdG9vayBtZSBieSBzdXJwcmlzZS4gSSBkaWQgbW9zdCBvZiBteSBkZXZl
bG9wbWVudCBvbiB0aGlzIHBhdGNoIHNlcmllcyBiZWZvcmUgdGhlIGJvdW5jZSBidWZmZXIgY29k
ZSB3YXMgYWRkZWQgYW5kIG15IHJlaW1wbGVtZW50YXRpb24gaW4gdGhlIGRtYS1pb21tdSBwYXRo
IGlzIHZlcnkgcnVzaGVkIGFuZCBub3QgcHJvcGVybHkgdGVzdGVkIGJ1dCBJ4oCZbSBydW5uaW5n
IG91dCBvZiB0aW1lIHRvIHdvcmsgb24gdGhpcyBwYXRjaCBzZXQuCgpPbiB0b3Agb2YgdGhhdCBJ
IGFsc28gZGlkbuKAmXQgcG9ydCBvdmVyIHRoZSBpbnRlbCB0cmFjaW5nIGNvZGUgZnJvbSB0aGlz
IGNvbW1pdDoKaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC8zYjUzMDM0
YzI2OGQ1NTBkOWU4NTIyZTYxM2ExNGFiNTNiODg0MGQ4I2RpZmYtNmIzZTdjNDk5M2YwNWU3NjMz
MWU0NjNhYjFmYzg3ZTEKU28gYWxsIHRoZSB3b3JrIGluIHRoYXQgY29tbWl0IGlzIG5vdyB3YXN0
ZWQuIFRoZSBjb2RlIHdpbGwgbmVlZCB0byBiZSByZW1vdmVkIGFuZCByZWltcGxlbWVudGVkIGlu
IHRoZSBkbWEtaW9tbXUgcGF0aC4gSSB3b3VsZCBsaWtlIHRvIHRha2UgdGhlIHRpbWUgdG8gZG8g
dGhpcyBidXQgSSByZWFsbHkgZG9u4oCZdCBoYXZlIHRoZSB0aW1lIGF0IHRoZSBtb21lbnQgYW5k
IEkgd2FudCB0byBnZXQgdGhlc2UgY2hhbmdlcyBvdXQgYmVmb3JlIHRoZSBpb21tdSBjb2RlIGNo
YW5nZXMgYW55IG1vcmUuCgoKVG9tIE11cnBoeSAoOCk6CiAgaW9tbXUvdnQtZDogY2xlYW4gdXAg
MzJiaXQgc2lfZG9tYWluIGFzc2lnbm1lbnQKICBpb21tdS92dC1kOiBVc2UgZGVmYXVsdCBkbWFf
ZGlyZWN0XyogbWFwcGluZyBmdW5jdGlvbnMgZm9yIGRpcmVjdAogICAgbWFwcGVkIGRldmljZXMK
ICBpb21tdS92dC1kOiBSZW1vdmUgSU9WQSBoYW5kbGluZyBjb2RlIGZyb20gbm9uLWRtYV9vcHMg
cGF0aAogIGlvbW11OiBIYW5kbGUgZnJlZWxpc3RzIHdoZW4gdXNpbmcgZGVmZXJyZWQgZmx1c2hp
bmcgaW4gaW9tbXUgZHJpdmVycwogIGlvbW11OiBBZGQgaW9tbXVfZG1hX2ZyZWVfY3B1X2NhY2hl
ZF9pb3ZhcyBmdW5jdGlvbgogIGlvbW11OiBhbGxvdyB0aGUgZG1hLWlvbW11IGFwaSB0byB1c2Ug
Ym91bmNlIGJ1ZmZlcnMKICBpb21tdS92dC1kOiBDb252ZXJ0IGludGVsIGlvbW11IGRyaXZlciB0
byB0aGUgaW9tbXUgb3BzCiAgRE8gTk9UIE1FUkdFOiBpb21tdTogZGlzYWJsZSBsaXN0IGFwcGVu
ZGluZyBpbiBkbWEtaW9tbXUKCiBkcml2ZXJzL2lvbW11L0tjb25maWcgICAgICAgICAgIHwgICAx
ICsKIGRyaXZlcnMvaW9tbXUvYW1kX2lvbW11LmMgICAgICAgfCAgMTQgKy0KIGRyaXZlcnMvaW9t
bXUvYXJtLXNtbXUtdjMuYyAgICAgfCAgIDMgKy0KIGRyaXZlcnMvaW9tbXUvYXJtLXNtbXUuYyAg
ICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvaW9tbXUvZG1hLWlvbW11LmMgICAgICAgfCAxODMgKysr
KystLQogZHJpdmVycy9pb21tdS9leHlub3MtaW9tbXUuYyAgICB8ICAgMyArLQogZHJpdmVycy9p
b21tdS9pbnRlbC1pb21tdS5jICAgICB8IDkzNiArKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogZHJpdmVycy9pb21tdS9pb21tdS5jICAgICAgICAgICB8ICAzOSArLQogZHJpdmVycy9p
b21tdS9pcG1tdS12bXNhLmMgICAgICB8ICAgMyArLQogZHJpdmVycy9pb21tdS9tc21faW9tbXUu
YyAgICAgICB8ICAgMyArLQogZHJpdmVycy9pb21tdS9tdGtfaW9tbXUuYyAgICAgICB8ICAgMyAr
LQogZHJpdmVycy9pb21tdS9tdGtfaW9tbXVfdjEuYyAgICB8ICAgMyArLQogZHJpdmVycy9pb21t
dS9vbWFwLWlvbW11LmMgICAgICB8ICAgMyArLQogZHJpdmVycy9pb21tdS9xY29tX2lvbW11LmMg
ICAgICB8ICAgMyArLQogZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jICB8ICAgMyArLQog
ZHJpdmVycy9pb21tdS9zMzkwLWlvbW11LmMgICAgICB8ICAgMyArLQogZHJpdmVycy9pb21tdS90
ZWdyYS1nYXJ0LmMgICAgICB8ICAgMyArLQogZHJpdmVycy9pb21tdS90ZWdyYS1zbW11LmMgICAg
ICB8ICAgMyArLQogZHJpdmVycy9pb21tdS92aXJ0aW8taW9tbXUuYyAgICB8ICAgMyArLQogZHJp
dmVycy92ZmlvL3ZmaW9faW9tbXVfdHlwZTEuYyB8ICAgMiArLQogaW5jbHVkZS9saW51eC9kbWEt
aW9tbXUuaCAgICAgICB8ICAgMyArCiBpbmNsdWRlL2xpbnV4L2ludGVsLWlvbW11LmggICAgIHwg
ICAxIC0KIGluY2x1ZGUvbGludXgvaW9tbXUuaCAgICAgICAgICAgfCAgMzIgKy0KIDIzIGZpbGVz
IGNoYW5nZWQsIDM0NSBpbnNlcnRpb25zKCspLCA5MDggZGVsZXRpb25zKC0pCgotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
