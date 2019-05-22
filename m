Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DBE263DD
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 14:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2RwWv2Xuun+FGLBbpsOVnzkkTSf2o+4Svs1wRcNGMI=; b=C+MZVa0lDaUaJ8
	LMLBlKqjQyr3+jiNuXBm2CVxXqvlI8t0vGPaJixkBn8+0mnMG37vu1cuBfNlNsoCxegmIYfwIlfEb
	GJAFSZ4/dxrLVExZhPXibxnkT+0dtuCrRQZsWqhEOfsIpiUbQ9MjMXDILt87Jv2HJT1HeMNwNYdr5
	U3GaGiGUyydsgwWfODwdGtVnDZMutzJ4FFTcea6x4r/k5gJ7IFCF9KA9Tue1qr3yF5TOyQACSIvUN
	IqADRyt2GJ5+N2H6YUcmT8P83wbu/c6BPIbEKBo8MCAt9lXgV2GjmjZLgh5b3EFDOOMu+xrY+ogy0
	+WzJzRzm50uhfGhy4PwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQO4-0004FG-63; Wed, 22 May 2019 12:30:28 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQNw-00047N-Aq
 for linux-rockchip@lists.infradead.org; Wed, 22 May 2019 12:30:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id 7so2023522wmo.2
 for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2019 05:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bWFk7Dku220BSIRMzb9u9QC4G1aGkz5eeVURI5VAO6k=;
 b=g96lwHJ1ode6GDHOpCNuIGXm9CyJMyL30+7sF/XHZsGNh83VKrt4oHQElsVQcq3Px6
 BOLZCXg2OkSQeBvD3hxSeV4p2mhTpmNUGC5+Hk9dDKEZ2kCwnFtdO3vkgr14OreE2lST
 el4z4ZbLjBnZDmCh9cbIxr5CVw4rtQtIgsScMOQB7jjEHWklwSnumvckNFx9JoklMZdT
 Pagwhsw3cJsXOGpV22J+QEU5RyEKqs5w/+Nmh5uFkwv9vQ5LGI2FSuj3qYd/u0u6rlVC
 9YVaMPU1e9ul/YO63BYEVxcUJFXVRQjaOAlw1VdSX/bIM/KVJjpW9PCFv7aHz6XbHE2Z
 EysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bWFk7Dku220BSIRMzb9u9QC4G1aGkz5eeVURI5VAO6k=;
 b=Dkn9OnlyooRubNgXanTuR91AK7rBHZ27zx9nFnL2bnvp0JLgwR7zVnheGWYEWkA4v3
 iQliNm7cvRWkYaznma8YIQlfNLwjb+5/PJHVq8iNZVkjXgasNYVZe0nUbVHgRggJHcoK
 mpM/NpiJx/mbOHw7GA2zAcuFjEX6RC9fOLKCQ1eRGicRpvb7blzA1l0+OsEEkq55vd1R
 r5UVwZk7e40jovu3McSFqISD64T1tWJIchzl7ResTlTuan3gJNBI/+rfwy7dq9tjWJvf
 Nue1mWx++6PqALSkIPt5uSysAS5UXqoV1iD0lLOvjM1QVjXb3/+L9QNQLjNU1tccGNEc
 pzeQ==
X-Gm-Message-State: APjAAAUg4ew2wyOgngMX8cXg+8QRJjBU8LWmRuFxYyGOXI327E/szTBn
 kHCcIZbN98aoWPmvjdACN5XuAw==
X-Google-Smtp-Source: APXvYqwcEWVPtTAR2IKfdlPTMN56ztuBh3i4KBntxk3eiRbthNztynbpp3p0eM5amjYVUHiszLA3qQ==
X-Received: by 2002:a1c:eb18:: with SMTP id j24mr7077335wmh.32.1558528218123; 
 Wed, 22 May 2019 05:30:18 -0700 (PDT)
Received: from [10.1.203.87] (nat-wifi.sssup.it. [193.205.81.22])
 by smtp.googlemail.com with ESMTPSA id y4sm3952952wmj.20.2019.05.22.05.30.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:30:17 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo Serra <eballetbo@gmail.com>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
 <CAFqH_53nbiwzQKctNa7MBzgCcsRFn1p8g31Xgvo3E9k6eA8AKw@mail.gmail.com>
 <2174314.1vfUlvne1O@phil>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f0581341-126a-5733-3c4b-8e6f67bfc32e@linaro.org>
Date: Wed, 22 May 2019 14:30:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2174314.1vfUlvne1O@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_053020_369483_8963B2D0 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Doug Anderson <dianders@chromium.org>, huangtao@rock-chips.com,
 Linux PM list <linux-pm@vger.kernel.org>, xxx@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, vicencb@gmail.com,
 xf@rock-chips.com, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjIvMDUvMjAxOSAxNDoyNywgSGVpa28gU3R1ZWJuZXIgd3JvdGU6CgpbIC4uLiBdCgo+PiBB
cyB0aGlzIGNoYW5nZSBpcyBub3cgaW4gbWFpbmxpbmUgYW5kIGlzIGNhdXNpbmcgdmV5cm9uIHRv
IGhhbmcgSSdkCj4+IHN1Z2dlc3QgcmV2ZXJ0aW5nIHRoaXMgY2hhbmdlIGZvciBub3cuIEV2ZW4g
Zml4aW5nIHRoZSByb290IGNhdXNlCj4+IChtYXliZSB0aGUgb25lIEkgcG9pbnRlZCBhYm92ZSkg
YWZ0ZXIgdGhpcyBwYXRjaCB3ZSB3aWxsIGhhdmUgdGhlCj4+IHRoZXJtYWwgZHJpdmVyIHRvIGZh
aWwgYmVjYXVzZSAiZ3BpbyIgYW5kICJvdHBvdXQiIHN0YXRlcyBhcmUgbm90Cj4+IGRlZmluZWQg
bm9yIGRvY3VtZW50ZWQgKGEgY2hhbmdlIG9uIHRoaXMgd2lsbCBuZWVkIHNvbWUgcmV2aWV3cyBh
bmQKPj4gYWNrcyBhbmQgdGltZSBJIGd1ZXNzKS4KPiAKPiBJIGRlZmluaXRseSBhZ3JlZSBoZXJl
LiBIYW5kbGluZyArIGNoZWNraW5nIHRoZSBiaW5kaW5nIGNoYW5nZQo+IGFzIHdlbGwgYXMgbmVl
ZGVkIGZhbGxiYWNrIGNvZGUgaXMgZGVmaW5pdGx5IG5vdCBtYXRlcmlhbCBmb3IgLXJjLWtlcm5l
bHMKPiBzbyB3ZSBzaG91bGQganVzdCByZXZlcnQgZm9yIG5vdyBhbmQgbGV0IEVsYWluZSBmaXgg
dGhlIGlzc3VlcyBmb3IgNS4zLgo+IAo+IEFueW9uZSB2b2x1bnRlZXJpbmcgZm9yIHNlbmRpbmcg
YSByZXZlcnQtcGF0Y2ggdG8gRWR1YXJkbz8gOi0pCgpJIGNhbid0IHJpZ2h0IG5vdyA6LwoKCi0t
IAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29r
LmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5h
cm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxv
ZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
