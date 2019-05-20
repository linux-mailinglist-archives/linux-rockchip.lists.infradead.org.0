Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA5C2420B
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 22:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uri3gpuVMO18j8Y0s4JER/Czk3SzzJVA8iPPUrS4e7c=; b=t5zbiKBqTtO2tk
	LyiUAerSYcNIfON2iYXUQ+XDIcKKaYrP9ZY8m3YcNpPrvw6ODcNrXxNr+rxEMOsVxEJPdh/wtFH5u
	PUUSzxXKrgBuGIRf2JKbodJwb+HiDiluOqCKm5eTNpcGSY06DWdO8TPIzgSS5S7lUDzF0VIYOFBWJ
	uG8VhvlTXpw7tbBgT5DX6Q9/FKSf4i+G1T9V67cjGP9aKXqRJJp2qo8OvGYRCWR8RqEBrK5zWS8+F
	vSSezb7mP0hUZPJsg3v3o9CsqB7GKO1GKLFI/L6gGwoUNELFmICQ1IV+6DhHaanSzwqlXmG/n5VKs
	0Tvh+LZF6wDqMeTxL0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSon9-0001mL-NF; Mon, 20 May 2019 20:21:51 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSon5-0001lI-RN
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 20:21:49 +0000
Received: by mail-vs1-xe41.google.com with SMTP id z11so9739026vsq.9
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 13:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+cwBfmNJOYYnLoNWnVRRnVYNxdiZh0AA2x8O10NbLoM=;
 b=UUk3ytbRvoMJoCb1BDVV+bhMWyNCfP4VAtjMhf1lzGoGdYLBnk+w1DzR1J257pctAl
 Z1sIhOH/IrWFoh7qnyLcIMvuCkh8fkDTGFrKquN9TP9ipVXj2ksMpQf/2h+xNxqCH3K2
 oiIVhVB2Wc5K/vc4KJ88h0vfB7fgjFsM3M9kY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+cwBfmNJOYYnLoNWnVRRnVYNxdiZh0AA2x8O10NbLoM=;
 b=CrYgN3ahp3P4CMn9hhFIH5rzUbJppgFINMKegjOqOYaQchgYDKsg5oyMc8HZk08yIo
 BzksGzUpOPTcXyUpnZ+TyGCXAIhrbfqOSdznvqrEJXDWksFQOuGNx3lhpfgKognbQRHa
 JzFMI4V2D0brSMWhWVzVx1LkYAXKw+7LSeZ7Ei4arZrzBhL+ZPGodNMILCw9vSA7npbe
 yKszxYqSgzVUjR3KTm1B3JgzV5y3+QQGLU2dT5umWCMPd+A7tDuBvgz/SoE11SgQr6mS
 lj82IuqJUx0YT7PICylM0LtgC3M0NfeXXRA7vInzgfzXAY1CRTi0jjcW41rW03hSrwYX
 mtaw==
X-Gm-Message-State: APjAAAVKX7Y/UjrbI/60UGeIGjniK98NYAzVyf1tyGoogOKmFc4T6W2n
 9fe1yN9t2Dd6VROhaB82KrjzeQ+Cy4E=
X-Google-Smtp-Source: APXvYqyRvrBT0iyPdwzl7XcVyZyMnLRGoDtGui8blJrYSdQRvYnvLRvanK5JTLrpjXeCwk52Cz8Djw==
X-Received: by 2002:a67:f693:: with SMTP id n19mr37632808vso.89.1558383706371; 
 Mon, 20 May 2019 13:21:46 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com.
 [209.85.217.46])
 by smtp.gmail.com with ESMTPSA id 9sm9023763vkk.43.2019.05.20.13.21.45
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:21:45 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id l20so9773249vsp.3
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 13:21:45 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr31790963vsk.149.1558383705071; 
 Mon, 20 May 2019 13:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190520170132.91571-1-mka@chromium.org>
 <20190520170132.91571-2-mka@chromium.org>
In-Reply-To: <20190520170132.91571-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 13:21:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
Message-ID: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_132147_885516_D1217275 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDowMSBBTSBNYXR0aGlhcyBLYWVobGNrZSA8
bWthQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4KPiBtaWNrZXkgY3JhbXMgYSBsb3Qgb2YgaGFyZHdh
cmUgaW50byBhIHRpbnkgcGFja2FnZSwgd2hpY2ggcmVxdWlyZXMKPiBtb3JlIGFnZ3Jlc3NpdmUg
dGhlcm1hbCB0aHJvdHRsaW5nIHRoYW4gZm9yIGRldmljZXMgd2l0aCBhIGxhcmdlcgo+IGZvb3Rw
cmludC4gQ29uZmlndXJlIHRoZSBHUFUgdGhlcm1hbCB6b25lIHRvIHRocm90dGxlIHRoZSBHUFUK
PiBwcm9ncmVzc2l2ZWx5IGF0IHRlbXBlcmF0dXJlcyA+PSA2MMKwQy4gSGVhdCBkaXNzaXBhdGVk
IGJ5IHRoZQo+IENQVXMgYWxzbyBhZmZlY3RzIHRoZSBHUFUgdGVtcGVyYXR1cmUsIGhlbmNlIHdl
IGNhcCB0aGUgQ1BVCj4gZnJlcXVlbmN5IHRvIDEuNCBHSHogZm9yIHRlbXBlcmF0dXJlcyBhYm92
ZSA2NcKwQy4gRnVydGhlciB0aHJvdHRsaW5nCj4gb2YgdGhlIENQVXMgbWF5IGJlIHBlcmZvcm1l
ZCBieSB0aGUgQ1BVIHRoZXJtYWwgem9uZS4KPgo+IFRoZSBjb25maWd1cmF0aW9uIG1hdGNoZXMg
dGhhdCBvZiB0aGUgZG93bnN0cmFtIENocm9tZSBPUyAzLjE0CgpzL2Rvd25zdHJhbS9kb3duc3Ry
ZWFtCgoKPiArICAgICAgIGNvb2xpbmctbWFwcyB7Cj4gKyAgICAgICAgICAgICAgIC8qIEFmdGVy
IDFzdCBsZXZlbCB0aHJvdHRsZSB0aGUgR1BVIGRvd24gdG8gYXMgbG93IGFzIDQwMCBNSHogKi8K
PiArICAgICAgICAgICAgICAgZ3B1X3dhcm1pc2hfbGltaXRfZ3B1IHsKPiArICAgICAgICAgICAg
ICAgICAgICAgICB0cmlwID0gPCZncHVfYWxlcnRfd2FybWlzaD47Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmdwdSBUSEVSTUFMX05PX0xJTUlUIDE+OwoKQXMg
cGVyIG15IGNvbW1lbnQgaW4gcGF0Y2ggIzEsIHlvdSBhcmUgcHJvYmFibHkgZW5kaW5nIHVwIHRo
cm90dGxpbmcKdG8gNTAwIE1Ieiwgbm90IDQwMCBNSHouICBCZWxvdyB3aWxsIGFsbCBoYXZlIHNp
bWlsYXIgcHJvYmxlbXMgdW5sZXNzCndlIGFjdHVhbGx5IGRlbGV0ZSB0aGUgNTAwIE1IeiBvcGVy
YXRpbmcgcG9pbnQuCgoKPiArICAgICAgICAgICAgICAgfTsKPiArCj4gKyAgICAgICAgICAgICAg
IC8qCj4gKyAgICAgICAgICAgICAgICAqIFNsaWdodGx5IGFmdGVyIHdlIHRocm90dGxlIHRoZSBH
UFUsIHdlJ2xsIGFsc28gbWFrZSBzdXJlIHRoYXQKPiArICAgICAgICAgICAgICAgICogdGhlIENQ
VSBjYW4ndCBnbyBmYXN0ZXIgdGhhbiAxLjQgR0h6LiAgTm90ZSB0aGF0IHdlIHdvbid0Cj4gKyAg
ICAgICAgICAgICAgICAqIHRocm90dGxlIHRoZSBDUFUgbG93ZXIgdGhhbiAxLjQgR0h6IGR1ZSB0
byBHUFUgaGVhdC0td2UnbGwKPiArICAgICAgICAgICAgICAgICogbGV0IHRoZSBDUFUgZG8gdGhl
IHJlc3QgaXRzZWxmLgo+ICsgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgZ3B1
X3dhcm1fbGltaXRfY3B1IHsKPiArICAgICAgICAgICAgICAgICAgICAgICB0cmlwID0gPCZncHVf
YWxlcnRfd2FybT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8
JmNwdTAgNCA0PjsKClNob3VsZG4ndCB5b3UgbGlzdCBjcHUxLCBjcHUyLCBhbmQgY3B1MyB0b28/
ICBUaGF0J2QgbWF0Y2ggd2hhdAp1cHN0cmVhbSBkaWQgZWxzZXdoZXJlIGluIHRoaXMgZmlsZT8K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
