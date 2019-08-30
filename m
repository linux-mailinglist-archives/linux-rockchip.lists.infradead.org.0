Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423A1A3D15
	for <lists+linux-rockchip@lfdr.de>; Fri, 30 Aug 2019 19:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rl0/h+xZT7ClT+GrYeQyadBAt0k9aO1sjBMYOO9hrPU=; b=MMX1dfRd4QSH56
	fqQS1cB7mndKt03+OznlizKJ9CkyNDby7aADWAcmGd4xLUqDbJW8AqJkj5xUw2FNyc5btcygkB924
	bIenbQa/1EEJH524WDUimkTmihHL2uuLWCuKVq2qYOyMVixcn9SvjCVBC25TIzWLD9rXLMafrhbwH
	tkmLIB+8ZEb6zZJu6ZFoLVa3dDBcGlLXHR6JSSjKJfIqQv9eT+LB9RbffJyXWodW4OX3H4K/mOSc0
	a1zuQ3oHdi81qF2C/MEg36VjICHhCV6Ktdiq+OZXQqNl4/Pcbutv3jeqM5SOigggPkuiF6fNM+Uq0
	BGIfYE+GkqrkSH8WnQDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ks5-0000bE-MG; Fri, 30 Aug 2019 17:39:37 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ks0-0000aq-GZ
 for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2019 17:39:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id d25so13135021iob.6
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2019 10:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=47tlWRLNKtj5MR91kGpu5smjeLymr++ZvcjSqhRL9xQ=;
 b=IPKx/3JEZ5V7Zy0ANXfTidU7rnyx4RWn0FcNVp/C9l0DJIoJBM3ASstr5m+MHb5w8g
 cJu96elID8dyHtruySXwxNbM9T6+2glSq3lNsvDHUE2xmdpCAWsZgmyeHaxGEGSurZbX
 MH/GzcGg7yP0B79Zqi9hetJn/P2H8dj7eW5V0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=47tlWRLNKtj5MR91kGpu5smjeLymr++ZvcjSqhRL9xQ=;
 b=K198C1A/9hdK4VR0+OltZryvmSjYVgnt3r1ejijKH8xBMY3Xr4UTLpupb/MtyorW7f
 /RCzp8tSoTIbNflZ4Gvr9VdNAxDHKFcfU/M63RtlcCGjLos0JTw21lkDNd488WC7HZBv
 gKGvls97xCXMrch7ojzFnLxEO9iksl+GUy0iEV7TrSmlXlH4dMjT1ee/o6cWCS0obIzC
 2Mi8tp0e6NUMK2lkOHKRLlAIr/vnIsMERhlLHQVVhF+dM4clXbF0IIgJrTAIwyDbetpL
 xQpcf/OrsyMks4rxz/Xd6xmkqVX2ezOo/d1sDKXkhDv/Q3G3Xip/Gs6qbFBwKkWRxk5V
 P7Tw==
X-Gm-Message-State: APjAAAUXAjcY/+Jp9psZXnQqBn+4BemxaGhDyWIUJFRNRZj3Ec85eoAT
 MmL/kFjlkMqjQl9iPwGdkezNGG8R+lk=
X-Google-Smtp-Source: APXvYqzds9t9e5Vj8oHCqlqmxO6JMJTxvpaWXT7dTi8hOKzhmLTNp8hoysbWaT94Dd2ZP4ULQoTDhg==
X-Received: by 2002:a5e:db47:: with SMTP id r7mr3257758iop.184.1567186770602; 
 Fri, 30 Aug 2019 10:39:30 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id a21sm4724011ioe.27.2019.08.30.10.39.29
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 10:39:29 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id r4so426323iop.4
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2019 10:39:29 -0700 (PDT)
X-Received: by 2002:a02:a1c7:: with SMTP id o7mr18093414jah.26.1567186769165; 
 Fri, 30 Aug 2019 10:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-6-uwe@kleine-koenig.org>
In-Reply-To: <20190824153707.13746-6-uwe@kleine-koenig.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 30 Aug 2019 10:39:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
Message-ID: <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_103932_578393_4E77EAB2 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm <linux-pwm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Patrick Havelange <patrick.havelange@essensium.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCA4OjM3IEFNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1
d2VAa2xlaW5lLWtvZW5pZy5vcmc+IHdyb3RlOgo+Cj4gVGhlIHB3bS1mc2wtZnRtIGRyaXZlciBp
cyBvbmUgb2Ygb25seSB0aHJlZSBQV00gZHJpdmVycyB3aGljaCB1cGRhdGVzCj4gdGhlIHN0YXRl
IGZvciB0aGUgY2FsbGVyIG9mIHB3bV9hcHBseV9zdGF0ZSgpLiBUaGlzIG1pZ2h0IGhhdmUKPiBz
dXJwcmlzaW5nIHJlc3VsdHMgaWYgdGhlIGNhbGxlciByZXVzZXMgdGhlIHZhbHVlcyBleHBlY3Rp
bmcgdGhlbSB0bwo+IHN0aWxsIHJlcHJlc2VudCB0aGUgc2FtZSBzdGF0ZS4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Cj4gLS0tCj4g
IGRyaXZlcnMvcHdtL3B3bS1mc2wtZnRtLmMgfCA0IC0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQg
ZGVsZXRpb25zKC0pCgpQcmVzdW1hYmx5IHRoaXMgcGF0Y2ggY291bGQgYnJlYWsgc29tZXRoaW5n
IHNpbmNlIHRoZSBwd20tZnNsLWZ0bQpkcml2ZXIgZG9lc24ndCBhcHBlYXIgdG8gaW1wbGVtZW50
IHRoZSBnZXRfc3RhdGUoKSBmdW5jdGlvbi4gIC4uLm9yCmRpZCBJIG1pc3MgaXQ/CgotRG91ZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
