Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3835A2C551
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 13:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RVdz+qlz/j0weN2Kx0240p/lbUnJTZmr3VLnpYyfmVw=; b=bbAwpyW8iwDTItyddGQty+LVc
	0sLHZuj7NsPShpqdgCUkudG+xQ4D2tslqPBtdHvdhfsvwddAj5wB+DCOjAuZk75elKmyVi9ncsmmL
	d8KKXeBe/LFm1Li/fGnDyv7X1pENLGxTLFHNCdk8eLPP+V54fc8n+R+kB0aUPcnWj1VXytdReWo3k
	0v5v80jq5I6MoQYR9sD10wORddvHSWkn0nMLdKH8k8t+NY4pzP0LuChnK3X62OQJzQezp0bIJk2Ch
	9/ziox10TZMOAWoxAtc8G29vZ3NOI+fVxMa1TuSgculrmXsKfsIyTBiy0RvA5jxWE1J1MgHT07fL3
	AlDdZjU4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaBF-0001LB-1a; Tue, 28 May 2019 11:22:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaBC-0001Kk-7i
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 11:22:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so8220981plz.1
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 04:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Yh3DAsuBc4gaJRrR/0YoTC38OI767n+zAes4csgVWko=;
 b=elVmDm2gsK/dIGoNpFbZIl22gU7w01mHXsboFCvVWGWWAqbunekdZawS9aQsnHtYvY
 yeQDeDCZs2lKT5IMCh+4RuK5NE/eyeg91lZJTiukTaGHDDlzgtSq85TNuI7PEDpblfaM
 6rHkI7gu//zI5NedRhf5VpsXnLSwFDw32G33w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Yh3DAsuBc4gaJRrR/0YoTC38OI767n+zAes4csgVWko=;
 b=qxbGZXb/Ebs83489fuwT1X2L5SPBZ7duj1LHnlHFbSt4QPb5d3vBUcbKfgdp2ITiyE
 AYeBp0XAPQPwukaYBoeN1S9BPnDMB4YJa1T2zX9JTnX1EwzaoO6NeKklpy+9nEvflMgZ
 qEl2aI3SXwXnnj9cR4ea4BUlC4S9wiYfdhkyM56pPgucBDHVvtPolUvTB+5Rsjtl03Fe
 5tlpogzOxGLH0Mlca6Pajby8O/1FzC37PCsuq51Gzz2h0H9fIYMltE2ikNbwM6PTEQzz
 SaNbh4BfgLaaAqI7q1Q0ONL8oDlRj8t2O1tSvZLKAHox2sD1sVwnc7z1Vs0fy2rchHJZ
 OsgQ==
X-Gm-Message-State: APjAAAWVOhbgsU5l2vL3RXoKIKQnusGs6uwHnYm5M3h9Ugmo9NC2x66i
 WziBRO4hunSoXz66DY6jC6ltQQ==
X-Google-Smtp-Source: APXvYqwwzVy5Av2JOK5uYN5DGO0T44ahiMxb2TOXN05vS25P0a/7S3kdg9t9OcwT5IQOnJ3KQizstg==
X-Received: by 2002:a17:902:868c:: with SMTP id
 g12mr27817259plo.323.1559042525002; 
 Tue, 28 May 2019 04:22:05 -0700 (PDT)
Received: from [10.176.68.125] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id v9sm13241440pfm.34.2019.05.28.04.22.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 04:22:04 -0700 (PDT)
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Adrian Hunter <adrian.hunter@intel.com>,
 Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org>
 <05af228c-139b-2b7f-f626-36fb34634be5@broadcom.com>
 <4f39e152-04ba-a64e-985a-df93e6d15ff8@intel.com>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <aa8e526f-b382-f3b7-74a5-e0fee09ae096@broadcom.com>
Date: Tue, 28 May 2019 13:21:59 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4f39e152-04ba-a64e-985a-df93e6d15ff8@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_042206_286052_2B693577 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 Ritesh Harjani <riteshh@codeaurora.org>, Martin Hicks <mort@bork.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-mmc@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiA1LzI4LzIwMTkgMTI6MDQgUE0sIEFkcmlhbiBIdW50ZXIgd3JvdGU6Cj4gT24gMjYvMDUv
MTkgOTo0MiBQTSwgQXJlbmQgVmFuIFNwcmllbCB3cm90ZToKPj4gT24gNS8xOC8yMDE5IDEyOjU0
IEFNLCBEb3VnbGFzIEFuZGVyc29uIHdyb3RlOgo+Pj4gTm9ybWFsbHkgd2hlbiB0aGUgTU1DIGNv
cmUgc2VlcyBhbiAiLUVJTFNFUSIgZXJyb3IgcmV0dXJuZWQgYnkgYSBob3N0Cj4+PiBjb250cm9s
bGVyIHRoZW4gaXQgd2lsbCB0cmlnZ2VyIGEgcmV0dW5pbmcgb2YgdGhlIGNhcmQuwqAgVGhpcyBp
cwo+Pj4gZ2VuZXJhbGx5IGEgZ29vZCBpZGVhLgo+Pgo+PiBQcm9iYWJseSBhIHF1ZXN0aW9uIGZv
ciBBZHJpYW4sIGJ1dCBob3cgaXMgdGhpcyByZXR1bmluZyBzY2hlZHVsZWQuIEkgcmVjYWxsCj4+
IHNlZWluZyBzb21ldGhpbmcgaW4gbW1jX3JlcXVlc3RfZG9uZS4gSG93IGFib3V0IGRlZmVycmlu
ZyB0aGUgcmV0dW5pbmcgdXBvbgo+PiBhIHJlbGVhc2UgaG9zdCBvciBpcyB0aGF0IHRvbyBzZGlv
IHNwZWNpZmljLgo+IAo+IEJlbG93IGlzIHdoYXQgSSBoYXZlIGJlZW4gY2FycnlpbmcgdGhlIGxh
c3QgNCB5ZWFycy4gIEJ1dCBhY2NvcmRpbmcgdG8gRG91Z2xhcycKPiBwYXRjaCwgdGhlIHJlbGVh
c2Ugd291bGQgbmVlZCB0byBiZSBmdXJ0aGVyIGRvd24uICBTZWUgMm5kIGRpZmYgYmVsb3cuCj4g
V291bGQgdGhhdCB3b3JrPwoKVGhhdCBtYWtlcyBzZW5zZS4gVGhlIGxvb3AgaXMgbmVlZGVkIGJl
Y2F1c2UgdGhlIGRldmljZSBjYW4gYmUgYSBiaXQgCmJvbmUgaGVhZGVkLiBTbyBpbmRlZWQgYWZ0
ZXIgdGhlIGxvb3AgdGhlIGRldmljZSBzaG91bGQgYmUgYXdha2UgYW5kIAphYmxlIHRvIGhhbmRs
ZSBDTUQxOS4KClJlZ2FyZHMsCkFyZW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
