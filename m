Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C842445D
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 01:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ug3yOueaIjM/rhHWiSrjpcaS6IjwrpZ7hLRYMUaDo1g=; b=MRqKFpOlvlQCqC
	c3fx8Mkgs3cdbS7xwYYN7iGagp3iQYqXK2nTDH6+H4up0ku3xxJpjT3m+RSdD2SUUCrfR55RN90tY
	xFW7fKKwtnKWFrScrFG7lvHO3XdyGPnqgYx0FiywPbngPVxV5qPQkjoHMNonN/MiORwGzwe3Jlq93
	ReAuyxpIHjccsdxXs2M3legkD3kFcthq+m5WMSPdq7LZCXfQxR2SgfAMJeWGAoJCUPTnNqmmVE+nR
	POCfAbgflGqoHATeS4WOPoBlkzesp4bgJb2hELzRJtpOzgD90b9ur5Igcci2vFtx42FogIrx9e2fE
	8j+Kgo/48elSg7+Fnf3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSris-0003lV-EX; Mon, 20 May 2019 23:29:38 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrik-0003e7-97
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 23:29:31 +0000
Received: by mail-ua1-x942.google.com with SMTP id 49so5956944uas.0
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 16:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CQeZYzD9s3oOBXBqpcz3upzW+HnTQAvaSuAunctoyUw=;
 b=LKTBBoJnF7WkULGQxYRtktRyp16+r2Gr0GC86jOnsS5RT3Wx9ZuGBDEItu79R4p99p
 vAFX/U3chWHezKYIkoxL/MVdaASdEIItymbmrFUUVIacAs0Lnbhz+9Jj3d0vRx0zoZLH
 gTG72w3rwFRZVgtpgcRRnnrJYF5tIVag+zGCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CQeZYzD9s3oOBXBqpcz3upzW+HnTQAvaSuAunctoyUw=;
 b=kzUOASYA6myV8ZFlYWH2z6nb8VeVmo/xTnBY8z97SwCZik9IsuB9QpF3imOFXhEdSH
 1b2+6XCtEB9sbtFBmiP/kBN3HhBxLJq8usRhFqGLeTYjmRg7SMloRIO0NhO7NHWXgnaa
 YPwDFn45EmfGx+bVTc5+R1NVVWN6tSWFvCxhw436eAhdZ3ERLyCi/QIIh44KwXf82lzV
 s8KFNEILt/1+ksLZsuQLTKeP0EY5Cf0RM4KXJT+lsaBr8YNucgLlWxfyMloBHBSXnp4c
 eyVKB+UAE63S0MBHPU4Xnk6IMZtqVqQGXCgA+RavBOXxLTa+Bwts21BQjZeQxN/CQOlk
 7KGA==
X-Gm-Message-State: APjAAAWnUtn5iq1z0VlGSv/Ep/ni5e1CIbkUkHBl4o9lpqOR7aE5Xp2n
 kTvf8864eNNhmYDn3fm7aS4G7NXzQFw=
X-Google-Smtp-Source: APXvYqyxlRqNitTIlzGXqm37r2rKWNdJaM1PtaMHQaSfJQTZN+7rgNSwNwM+jnpxaBtS15BTryXvqw==
X-Received: by 2002:ab0:1d8e:: with SMTP id l14mr17185279uak.72.1558394967994; 
 Mon, 20 May 2019 16:29:27 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42])
 by smtp.gmail.com with ESMTPSA id r23sm661723uan.7.2019.05.20.16.29.27
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 16:29:27 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id l20so10043565vsp.3
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 16:29:27 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr22498929vso.87.1558394966905; 
 Mon, 20 May 2019 16:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org>
 <20190520220051.54847-3-mka@chromium.org>
In-Reply-To: <20190520220051.54847-3-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 16:29:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WOpBWapjiz7zq-X7JUG3AaZOcN3Q-Z5XG9md4ZvMCtBw@mail.gmail.com>
Message-ID: <CAD=FV=WOpBWapjiz7zq-X7JUG3AaZOcN3Q-Z5XG9md4ZvMCtBw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_162930_315161_BA6067A1 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
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

SGksCgpPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAzOjAxIFBNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IG1pY2tleSBjcmFtcyBhIGxvdCBvZiBoYXJkd2Fy
ZSBpbnRvIGEgdGlueSBwYWNrYWdlLCB3aGljaCByZXF1aXJlcwo+IG1vcmUgYWdncmVzc2l2ZSB0
aGVybWFsIHRocm90dGxpbmcgdGhhbiBmb3IgZGV2aWNlcyB3aXRoIGEgbGFyZ2VyCj4gZm9vdHBy
aW50LiBDb25maWd1cmUgdGhlIEdQVSB0aGVybWFsIHpvbmUgdG8gdGhyb3R0bGUgdGhlIEdQVQo+
IHByb2dyZXNzaXZlbHkgYXQgdGVtcGVyYXR1cmVzID49IDYwwrBDLiBIZWF0IGRpc3NpcGF0ZWQg
YnkgdGhlCj4gQ1BVcyBhbHNvIGFmZmVjdHMgdGhlIEdQVSB0ZW1wZXJhdHVyZSwgaGVuY2Ugd2Ug
Y2FwIHRoZSBDUFUKPiBmcmVxdWVuY3kgdG8gMS40IEdIeiBmb3IgdGVtcGVyYXR1cmVzIGFib3Zl
IDY1wrBDLiBGdXJ0aGVyIHRocm90dGxpbmcKPiBvZiB0aGUgQ1BVcyBtYXkgYmUgcGVyZm9ybWVk
IGJ5IHRoZSBDUFUgdGhlcm1hbCB6b25lLgo+Cj4gVGhlIGNvbmZpZ3VyYXRpb24gbWF0Y2hlcyB0
aGF0IG9mIHRoZSBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0Cj4ga2VybmVsLCB0aGUgJ29mZmlj
aWFsJyBrZXJuZWwgZm9yIG1pY2tleS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhs
Y2tlIDxta2FAY2hyb21pdW0ub3JnPgo+IC0tLQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBzcGVjaWZ5
IGFsbCBDUFVzIGFzIGNvb2xpbmcgZGV2aWNlcwo+IC0gcy9kb3duc3RyYW0vZG93bnN0cmVhbS8g
aW4gY29tbWl0IG1lc3NhZ2UKPgo+IE5vdGU6IHRoaXMgcGF0Y2ggZGVwZW5kcyBvbiAiQVJNOiBk
dHM6IHJvY2tjaGlwOiBBZGQgI2Nvb2xpbmctY2VsbHMKPiBlbnRyeSBmb3IgcmszMjg4IEdQVSIg
KGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMDc1MDA1LykKPiAtLS0K
PiAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzIHwgNjcgKysrKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKQoKUmV2
aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
