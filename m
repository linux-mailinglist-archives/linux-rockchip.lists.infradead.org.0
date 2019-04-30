Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392C5F33F
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 11:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlgEWhDb7zfCGQDAfBff8FzXRitmYahM1qzm2sAztIA=; b=WOZcnXIkUodyfB
	OCXIBv9tWPSR7PzqR/AIJTjHT7Y0fZe4JnlIVtuSvY0kekb/euSbY9LCvvD4XOyleViNVyPw2wzWh
	TfDbY/mOrhrc6R1fv3l40kpjP39UTUCxAjrDPOWsjYpUcDi/mJCpeXUb8M8ngzpIpK+OaI6acANxT
	jVkMUzvf+pddkAiK2+haFmmKMVxJ4zFQG8et51oMmikSvJyiqIG1pL9BYP5URzB1D3uDuWoYLWFE9
	I204l7rjbQQzXDpUy3TaYPQX9VDlSrWK4FVV7l0n3eu64E27Sget8/ddKvd3fIkzATfJRuxZFR1Bv
	LhIWHMdono+O6Yfk/JHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPJx-0007BG-Fm; Tue, 30 Apr 2019 09:45:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPJl-00073R-Qc
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 09:44:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id 26so3036234wmj.3
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2019 02:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=looTlcqCIB3TJbyTND6k3EZ0RBWBOUlYZpKYaCAdqKk=;
 b=k1uR299Yxm7EYSAONf0f2K3YOAM0GjiFXsqYolyfZZLTPyI1gj/cbv4DyO9ZJMMo9V
 zaplBDtNX/iDfN7xaX2w1QFDFgjXVj/d5jAZ+h88IUQDUubQWZtxaRXTMD6XOyVdGCcy
 PA8KZrF+CCn51wYuRpN3z978NEy4BUA0y5XChjhrGM3V9n4QCoq3AYP2efD/U13xsVsX
 apuLMtSTLVH5zqkNoSSStkleNMmWoRppX04Wm32W6zOAMsv9N+zXPGE3QQ2a+Xx+s5Ni
 0NwQhN2rC+YABt5EWFekssoF+dpWSarQBwAXZzOztlay5fsAmT8xixoblGjJWBWE8II9
 4pYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=looTlcqCIB3TJbyTND6k3EZ0RBWBOUlYZpKYaCAdqKk=;
 b=Q+qq0uUYhLhgQPIAvrjEwPgLqdQgGrmlhLCpFKoPErjDEotUN6EcCP67hFm/QfbhTt
 O87HsL3ZiigZfwFzS50tHxwPBRMcH0Bp2WNP6N2XibJVlQGyQQczUN0xGC2DePCZ0lwb
 WG3rMn2OMEgQYmBntc3LmDeg5Uwu0/eW0eYxK2Auu9iwUsSKDK9Pawa0hLGFKH/2BFOG
 7eY1udR2m3nm+Zzx9iuKQjf0TChhurYiMs3Ps+Hjok+j4yETOhd7636miSU2Uupsh9rS
 DKYoZhvsUIT8sK2cGg5zoSCmYQH41AStuMC+5A/KMQ1WFn/9ziHVqReHnbkQR2J9XDaT
 C8MQ==
X-Gm-Message-State: APjAAAUfEECquOWDgsTrG0Cyx0G7qNIvfgrb4Fbxe8YJgTSfBYu0wEyp
 aa6pjOCjFeJpkIwwLHKrVTpTIA==
X-Google-Smtp-Source: APXvYqxDIo8nKc9Sp0C52XkXJ0RFa5uPzJ7miTrrLAzJ8p8qvVwZQM2Aq2xKA/IZYjIkM1ZaW930hQ==
X-Received: by 2002:a1c:4b03:: with SMTP id y3mr2522912wma.113.1556617491604; 
 Tue, 30 Apr 2019 02:44:51 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id e10sm24031411wra.52.2019.04.30.02.44.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 02:44:50 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: "elaine.zhang" <zhangqing@rock-chips.com>, heiko@sntech.de
References: <1556187154-22632-1-git-send-email-zhangqing@rock-chips.com>
 <1556187154-22632-2-git-send-email-zhangqing@rock-chips.com>
 <be0170d7-64dc-896d-b847-5be192304791@linaro.org>
 <8d41ea98-e0e8-60c8-3237-ade5d0d169bf@rock-chips.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <70cc3a91-8f5d-da48-a815-eaf2670f9a93@linaro.org>
Date: Tue, 30 Apr 2019 11:44:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8d41ea98-e0e8-60c8-3237-ade5d0d169bf@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024453_891024_B9BFEF24 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, huangtao@rock-chips.com,
 linux-pm@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjkvMDQvMjAxOSAxMTo1MSwgZWxhaW5lLnpoYW5nIHdyb3RlOgoKWyAuLi4gXQoKPiBwaW5j
dHJsIHNlbGVjdCB0byBncGlvIG1vZGUgd2hlbiB0c2FkYyBzdXNwZW5kIGFuZCBzaHV0ZG93bi4K
PiAKPiBXaGVuIHN1c3BlbmQsIHRzYWRjIGlzIGRpc2FibGVkLCB0aGUgb3RwX3BpbiBzaG91bGQg
cmV2ZXJ0IHRvIHRoZQo+IGRlZmF1bHQgZ3BpbyBzdGF0ZS4KPiAKPj4KPj4+IMKgIMKgwqDCoMKg
wqAgcmV0dXJuIDA7Cj4+PiDCoCB9Cj4+PiBAQCAtMTM4Myw3ICsxNDEzLDggQEAgc3RhdGljIGlu
dCBfX21heWJlX3VudXNlZAo+Pj4gcm9ja2NoaXBfdGhlcm1hbF9yZXN1bWUoc3RydWN0IGRldmlj
ZSAqZGV2KQo+Pj4gwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2hu
X251bTsgaSsrKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJvY2tjaGlwX3RoZXJtYWxfdG9nZ2xl
X3NlbnNvcigmdGhlcm1hbC0+c2Vuc29yc1tpXSwgdHJ1ZSk7Cj4+PiDCoCAtwqDCoMKgIHBpbmN0
cmxfcG1fc2VsZWN0X2RlZmF1bHRfc3RhdGUoZGV2KTsKPj4+ICvCoMKgwqAgaWYgKHRoZXJtYWwt
PnRzaHV0X21vZGUgPT0gVFNIVVRfTU9ERV9HUElPKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBpbmN0
cmxfc2VsZWN0X3N0YXRlKHRoZXJtYWwtPnBpbmN0cmwsIHRoZXJtYWwtPm90cF9zdGF0ZSk7Cj4+
IEFuZCB0aGVuCj4+IMKgwqDCoMKgcGluY3RybF9zZWxlY3Rfc3RhdGUodGhlcm1hbC0+cGluY3Ry
bCwgdGhlcm1hbC0+cGluY3RybF9zdGF0ZSk7Cj4gCj4gcGluY3RybCBzZWxlY3QgdG8gb3RwIG1v
ZGUgd2hlbiB0c2FkYyByZXN1bWUuCgpPaywgdGhhbmtzIGZvciBjbGFyaWZ5aW5nLgoKICAtLSBE
YW5pZWwKCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
