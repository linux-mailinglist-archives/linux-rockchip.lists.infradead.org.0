Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1510B16FC48
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 11:32:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgwrK31M3SQRICCalyzke42KoVtevUmeDFi5x7+TCpg=; b=D1eTB9FngWzllM
	HGK+w05Tnac8/bW92eCqht4Kgd4yUMK6dVVx6q6ovqq5y+o2dmQL4ef14ZRVBLYHwrWwLJxDp/tIx
	PTGBPbrIocls8RAjz8b7HDfZM7OuEkAi1bbD/FBoZy5dd38itjjPS2dDTfzNH58pq+3RivUwutvSO
	tWtSK4WAC17Io2Ibvp7OxwqNFFH6k5ValBwmhxzt6VzvzvcxJaaSzSiGdBMmkBM807k4CHWu+QbBe
	a211yoLmeCYzJw1yX6Pc5eFCXhk+Eqbl4+zRjfssxIzZd7z0bLLeJCmJzA1Z3VaBFCycF18O6nhB4
	NZA37TKG3PyMruFueIng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tz6-0002hp-8k; Wed, 26 Feb 2020 10:32:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tz3-0002gj-7W
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 10:32:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so2367185wmj.5
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Feb 2020 02:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=w59D/LVQiWX2kMmXZwRywK/7r0DCCnLO8yLj1pspTDM=;
 b=Bbq+sfrSy+mPrK43DZyZF7brUtmbLoK2mr0li4wr2PXtYF8yDGOGIDJzDlvFo/Fwm6
 RgI2jxodLEhCOFcR5bmcQ5cZIAtGVWIiYhaMzGIAbTBK9Uttow1cKv19MS6rTLrApLnn
 2JkQah7TtthyJ4XZJAZiL1UZXH1V/vfxijOPhKnmkNc8RB97nGGKTOpbEXRmHHxvudbq
 7f7xKFFJMfpI3EuemXUayXrstfb8MG4uxIGEO7B/i6Zaqq8u0WjXC92uxFwxh5X2+3kx
 ePcH2vQMVIepb4eyy6G+w4rYEEqbv7JfvJCeFg82AWSwSfn/cHO5DiZC5zvyOcdzFWhg
 vwnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=w59D/LVQiWX2kMmXZwRywK/7r0DCCnLO8yLj1pspTDM=;
 b=TtnKJWLavvRgWNtby82goFeGzOy1Y78DLY7FG6X58jAJAvADpPYiRTEKFKY9i9itNL
 FZLeLyX04O0R/axSKolYaYS9WfA04UwExtmr/7p01BUyhNEtEcMrKGLYYyyav4IMXA3V
 3gIA8aN+v9h+1YbYrCmMm7h351V2FiiyWPmA5iAtQ/nw44AGAmkTpIT1oU7GOAQ2wcxU
 z2YC6ieNFgH7ciBtKU2FSER3176aIHf5JZfT7ydN2cvS5ZW6IdZYrFzetMky9wTiV3yU
 FlCNB3iLBiSb12+afSdqc5uCIdKnMjYX27I3mCbuMrxAQA00IpgaX9T2asdZq3JtNJNy
 pzfQ==
X-Gm-Message-State: APjAAAVznI55SbTUc2VuwY4KhsnoUE7T7x9B07xJC/TrjLZ9uonSrO2M
 TD7UO6ZazoF3aPqfe8mg8ID9uA==
X-Google-Smtp-Source: APXvYqw+6JzPd0GKqk4Ny40w87NETlhuo5LnVkzXtMB4r8NPlDMsYZopsIKzOzizRosRMrVwZaZFCQ==
X-Received: by 2002:a1c:9811:: with SMTP id a17mr2297141wme.8.1582713123080;
 Wed, 26 Feb 2020 02:32:03 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id n13sm2412184wmd.21.2020.02.26.02.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:32:02 -0800 (PST)
Date: Wed, 26 Feb 2020 10:32:34 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 2/5] mfd: rk808: Ensure suspend/resume hooks always work
Message-ID: <20200226103234.GF3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <e2cd9aa88c96f69fd931d606e0e70784c3020551.1578789410.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2cd9aa88c96f69fd931d606e0e70784c3020551.1578789410.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_023205_270249_AE6D205B 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU3VuLCAxMiBKYW4gMjAyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgoKPiBUaGUgUks4MDkvUks4
MTcgc3VzcGVuZC9yZXN1bWUgaG9va3Mgc2hvdWxkIG5vdCBoYXZlIHRvIGRlcGVuZCBvbgo+IHdo
ZXRoZXIgdGhpcyBkcml2ZXIgb3ducyB0aGUgcG1fcG93ZXJfb2ZmIGhvb2ssIGFuZCB0aHVzIHRo
ZSBnbG9iYWwKPiByazgwOF9pMmNfY2xpZW50IGlzIHNldCAtIGluZGVlZCwgdGhlIEdQSU8tYmFz
ZWQgY29udHJvbCBpcyByZWFsbHkKPiBvbmx5IHJlbGV2YW50IHdoZW4gUFNDSSBmaXJtd2FyZSBp
cyBpbiBjaGFyZ2Ugb2YgcG93ZXIgcmF0aGVyIHRoYW4KPiB0aGUga2VybmVsLiBBcyBkcml2ZXIg
bW9kZWwgY2FsbGJhY2tzLCB0aGV5IGhhdmUgYW4gYXBwcm9wcmlhdGUKPiBkZXZpY2UgYXJndW1l
bnQgdG8gaGFuZCwgc28gY2FuIGp1c3QgYWx3YXlzIHVzZSB0aGF0Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
bWZkL3JrODA4LmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaW
r10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
