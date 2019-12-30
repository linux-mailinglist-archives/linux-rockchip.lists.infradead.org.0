Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A4112CD6E
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 08:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+GO11Zw8dFHuqKZCeTTFGoU5xDrgC8HRGO4sxlmlMs=; b=t6+gmAIWeLHugA
	9ZtgRKfeQs4WXXc4sTMJjQiNEUI2MI+d0qBA+9ItuTGgoHM9u0vfVBon45K5GnSxubLa9KwqY3GuQ
	XyqA4nWtbgUjBGEqOEok/iF6lIK5cmHJEeSfr/eDez8IMyUrUPFJmXX7RZT08m82nC5C8GkEc9U1U
	14jHX+KwIJzehP0+qyeoMlmv8+vBnOTY9eS5KfvjcVOBlgHD1WRgY5scxYUb/83twMzbSjP8LDNaQ
	GfMWvbJc2D42F6YvI+8j4e9PE77uBIo83kwZE0k+st7In/N+ZJdBrxLQfFcTKMdt1CCpSeHSylhRG
	3FBt+rMKyJBHQFn2nDUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilprH-0003Rq-Nt; Mon, 30 Dec 2019 07:52:59 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilprE-0003RW-CU
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 07:52:58 +0000
Received: by mail-il1-x142.google.com with SMTP id f5so27236382ilq.5
 for <linux-rockchip@lists.infradead.org>; Sun, 29 Dec 2019 23:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IUe/YAQhm4HUqxbZ/cdjmERBaACJd+bg/yf/k8lD5yA=;
 b=QGnMrWvlM4lQuOSH7n9pkYgtSaI84uz+olmRWfrvOZBG3Zipw5X/Nk6wuBSTmi0ai6
 9Ssf/dzfQ+7qHNaJQYUOqEUBfmr4hLFrYLtxqwmB9u4MDK5omucAsXaM340+VzAFn39A
 a9zWwNKa7RjXtJUiORdwNmb+nrdZfWA3TFTik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IUe/YAQhm4HUqxbZ/cdjmERBaACJd+bg/yf/k8lD5yA=;
 b=JiG1daG+8zRzB+Bg8pm6GEgN0XA+V8DkBifG8O9G1EP6FMFDttZTDQ+6FE6BryJY0u
 eHC7yjJRk4GHMNxcPtGHMhJm5WedDyoV1twJUw4tCcyXGlkjXboZ+LSU+8dsj6evgjFb
 iEdk4zWLufknonEaS8NXIU8ANfBy5Jcx+KPjpHD7PwQLt6dLYBY+M8/lTYNrIXatT7Ru
 YPoD7zycUo0BN6m80Fqff7tzl6aZensNSs02yYZ0f4vxuJca0rRTxM9UqLdE72I98JcR
 Qgl6ftWOw7pQjvlpxBCWl+tvPcHDDRl0TOzV5KLhthiIS6OBiEH54aBpXrEra+asi9z1
 wr3Q==
X-Gm-Message-State: APjAAAW3ZQRbNZkZvEQmm0OQgFscQSAtky8TDlXuQ2bTJCjxGdNdAjaj
 o3y2eDDp72L/gCgq9xklSNNCGRjDXw8MAq2gEQiLk1hX
X-Google-Smtp-Source: APXvYqwRjF8tT8/kMVqNk239QstMbKEzjHBoAVS+w0dbWJPlYMlK7Xk+7drcyfhIrkLZNG+5uaXnNPN7hZiJXUYYEI8=
X-Received: by 2002:a92:17cb:: with SMTP id 72mr56985262ilx.173.1577692373951; 
 Sun, 29 Dec 2019 23:52:53 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-12-jagan@amarulasolutions.com>
 <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
In-Reply-To: <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 30 Dec 2019 13:22:42 +0530
Message-ID: <CAMty3ZA1u3-21QN4N6W=9Sq3n493BBBB2W_FzAEQC9aze4SoMg@mail.gmail.com>
Subject: Re: [PATCH 11/11] roc-rk3399-pc: Add SPI boot support
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_235256_850696_C3D2A3AF 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMzAsIDIwMTkgYXQgODozNSBBTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+Cj4gT24gMjAxOS8xMi8yMSDkuIvljYgzOjU0LCBKYWdh
biBUZWtpIHdyb3RlOgo+ID4gQWRkIFNQSSBib290IHN1cHBvcnQgZm9yIFJPQy1SSzMzOTktUEMg
Ym9hcmQuCj4gPgo+ID4gVGhpcyB3b3VsZCBhZGQgc2VwYXJhdGUgY29uZmlnIGZpbGUKPgo+IFdo
YXQgaXMgdGhlIGtleSByZWFzb24gdG8gaGF2ZSBhIG5ldyBzZXBhcmF0ZSBjb25maWcgZmlsZT8g
SSB0aGluayBpdAo+IHdvdWxkIGJlIG11Y2ggYmV0dGVyCj4KPiB0byB1c2UgdGhlIHNhbWUgZGVm
Y29uZmlnLCBzcGkgYm9vdCBpcyBvbmUgb2YgZmVhdHVyZXMgbGlrZSBvdGhlcgo+IGZlYXR1cmVz
LCBpdCBzaG91bGQgbm90IG5lZWQKPgo+IGEgc2VwYXJhdGUgY29uZmlnLgoKUHJvYmxlbSBpcyBl
bnYsIHdlIGRvbid0IGhhdmUgZHluYW1pYyBlbnYgcGlja3VwIEkgZ3Vlc3MsIGRvbid0IHdlPwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
