Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B04CBA16
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 14:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAWz8pRs3HjATLVR6WNO2M1WFS6OAlYJHPCJV+tbwCY=; b=JTlDHWFfWr1X+A
	vy2425j/gj1It+nBhu4frfB4BJpi7dux/cHKf/sjE+YWk8lSV8ZdGHhYyZ3kIkZvuKisSB4DS+oDn
	pfAl5bc/BpR0mMA6sVyqMTHMtA7RYHkFGRr2s3mEHlVCI9i6HfZMWNgIPCsVoI9652JYzMXoBqJvL
	4nc1ut9BGkL7Yp8ZgTu3AZozv7fxyFDdYL80DXh3j7dh7RFWqd2V8yl+dW+/zYm1RA9w7AIFVh8OR
	Onj5lTp1wobdhk0gNFMpOoB1cn/XXdYBXv+d6nan2PqQ2PWktEMiVAZ1YlPL4yIdOAmPPO+8bBmMR
	8kzaPDlMJicMp3rJOvRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMSg-0003WX-3q; Fri, 04 Oct 2019 12:13:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKo-0003Nn-EK
 for linux-rockchip@lists.infradead.org; Fri, 04 Oct 2019 12:05:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id p14so5924311wro.4
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Oct 2019 05:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=0kiQfs8vhDdOITptnzWw+B0dDpP2AER+UC8EB8Xy3mI=;
 b=XsCW8OpnLzjcS61aOo1Yh3fP+V59Xk+Dc0ZTrTPqN/J2nRW3e2A2aYvG1LM+ZXHVEv
 MTU0A6zz37X/lriIY3ltpdEtQip/d7rX0/gI53f4v8YvFg0yyfvZgNCJJLh1RA2qi1m8
 zElLoeK6+IENXsGTMukOHEiPKz0f/hWNXHpifX2gnuNT4urK/xorGBmrR1dYvzG2l+m+
 Kz6bWHvVCGB+i1Foh1pK3S9IK/VESQCurvDOSmp2xsckr4L/JOimZtJx27zWWKTctX9I
 WWNq8FiOSpjZdbMg4y88rQ8q/QDnzkz7g8QYmV+rgOi8A/2uF6bt/QXF6q6aLfYgTTjO
 nlUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0kiQfs8vhDdOITptnzWw+B0dDpP2AER+UC8EB8Xy3mI=;
 b=Fyacjdyu26f6eZb7cY/iom/CRU40TItAFigPZLoTmSyLYZmQRtk1jIJ0pWqQHNIQsp
 2Av55oYH1/Z0m0WhWq/PrzQCgOmx29knm7Gsfd/3KvmZpTWcNb4+O5/VhePDBZvd2a2e
 Nl42bA6d+Ay3oNMF+1ZMS4MlULVMN1rMm64JC8TsGJAZrL8aMeQoNK1He+w+0Noqxv2p
 lmQylhHDf8CQamfyQsMOLpGDWGTx2Q+xTdclsPGqgLuQp6Sn9OcyxcCcajrLf0EBBlup
 LxHsAguljCPr/cE1sCzZ6AvLE3nOquXvZGBdE1UfKRMLsNwqS5ltmh6RfGlLWccc88mz
 yE4g==
X-Gm-Message-State: APjAAAX4NYOV4rsC17dqCNKGy9AxKwLpen0s6c1R81wQzemGC+uuzpQr
 YO7rWKGX6uVkNiyrSXGF7irV3Q==
X-Google-Smtp-Source: APXvYqyIxodV9sCnDx2rqHYS5wQ73rGu0Kh/d8gY7PvBN4bLJIU5EqfJnKy26vrR8jiNkoPHegsHFw==
X-Received: by 2002:adf:a1d2:: with SMTP id v18mr11336431wrv.302.1570190721062; 
 Fri, 04 Oct 2019 05:05:21 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id b7sm2009455wrx.56.2019.10.04.05.05.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 05:05:20 -0700 (PDT)
Date: Fri, 4 Oct 2019 13:05:19 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/4] mfd: rk808: fix rk817 powerkey integration
Message-ID: <20191004120519.GB18429@dell>
References: <20190917081256.24919-1-heiko@sntech.de>
 <20190917081256.24919-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917081256.24919-2-heiko@sntech.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050522_514668_264859B8 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 d.schultz@phytec.de, linux-kernel@vger.kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCAxNyBTZXAgMjAxOSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cgo+IFRoZSBwd3JrZXkg
aW50ZWdyYXRpb24gc2VlbXMgdG8gc3RlbSBmcm9tIHRoZSB2ZW5kb3Iga2VybmVsLCBhcyB0aGUK
PiBjb21wYXRpYmxlIGlzIHdyb25nIGFuZCBhbHNvIHRoZSBvcmRlciBvZiBrZXktaXJxcyBpcyBz
d2FwcGVkLgo+IAo+IFNvIGZpeCB0aGVzZSBpc3N1ZXMgdG8gbWFrZSB0aGUgcHdya2V5IG9uIHJr
ODE3IGFjdHVhbGx5IHdvcmsuCj4gCj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvcms4MDguYyB8IDE0ICsrKy0tLS0t
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygt
KQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vy
dmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
