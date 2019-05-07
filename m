Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C8C16995
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 19:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqM7NJC7KPHXd1g6sji6TRdlXiBfsgoD4NB3lTjxxB0=; b=LRHGep5lnlaz48
	9NVYS8DMDS7L6HCLFJDZFHjDm6rPwWagnVXdCB6JS66Mz/GTjje41rIak5B7Ndn5hZ/JazudF+BvZ
	AKhwVOjJtTNA2nSLB22U0Zo/BmYEicHna4AhIuQNdu1HWngUBLf6I2RdnadwrJ4MpkfWr1ZXu3RS7
	/NNijL/RpD4xfZH5O7E7ObwHfQny+dvFoWsJzoAG1NyccPDpSGqvS8U0vCHT4qtzQT5Ujv6hZeNl8
	LvIBfsYBDIkXcPGdx01RZfoGgrg82Hq8WEwSJmOjduWdtSrJy2wuV+6tMlYYOKIRdibT4hUV82ZN6
	oqmrqK9bAwf8/PMc3Ulg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4GC-0006i2-Pu; Tue, 07 May 2019 17:52:12 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4G9-0006hH-Cl
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 17:52:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id n8so8543348plp.10
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 10:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3hWkoDSJOZrfkTI64LpT00O3NiHbk0Ob1pJ65mVFON8=;
 b=JwQVKBlKDR92Sclejlu6Vw2HEiOQ94zveEodXjIxNpRKXX/8QP/ICWdvWDwa4eKxIL
 9x6Y2YrvN0jM6eBBCUIDzg2wUc7GCnowlNy6K1KkASCQdcV59d4QIsxSf71IYZILRf96
 h9t6FQ2wjKVqYwMkQ7B1S/QP5s76pj/6/uj0TIJqIl7uUNh+jcuAUBvRZLrmz031NFFd
 BVqdGZrbqCCk/bTfnHb2lvbNMJ4nq34bC9x7KKG+vF7fDu9+bPE89gNpo0ZVoECB+CNG
 kxgfFa2hdzWd45g/DfPIU6N4IdmsDDCZXQMwtgn4uCT7l7r3tovrR4ecZQGcoyEFxMkm
 gAyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3hWkoDSJOZrfkTI64LpT00O3NiHbk0Ob1pJ65mVFON8=;
 b=NOn7imNpp7v9Gc90IQpq1dRu2u04tsJ22Xd0HASsKWrP/VAenM+1eb0SXahnucWb1s
 sg92TxLwnb2uuRWKghorKs5YVJWoy8IiNpn59JGSx+Njm/adF5/H+WA357YxvvNh6cvy
 SH2/iTZBAgSMsVzX7MR2qr6OkPRIgjhzkbNwCWgu1TyIrrbB/zkTCbiGvvJEggoi9w4N
 iBH3bcFOSzRIZL1XvvTDJhzCAd13DvLkKKX18CEcC7UrG+Vr0/JSxbXDVfXo+Tbw/9Wg
 VamlVjjafxXflYB6mmcBXuSi/Bz+pjOfQr+UI6a2bFebmXdt7etAQNJP2giiOK/3Auzw
 I94w==
X-Gm-Message-State: APjAAAVQmGFXRjPGZ6XB8vPwe2MhqOwhH8NzdpDpAbXT+RlDPa3vi/R0
 BPMgEz2OtzFZfaHtOXwm1R8=
X-Google-Smtp-Source: APXvYqwV2fTFNQXeeczraLQ8ZQHBYaNpzObxLES0PAOQWGcz6OqTVaRRZV1VJ+05CjQtDMabO/z4ag==
X-Received: by 2002:a17:902:8343:: with SMTP id
 z3mr25340601pln.240.1557251528475; 
 Tue, 07 May 2019 10:52:08 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id g128sm19504187pfb.131.2019.05.07.10.52.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 10:52:07 -0700 (PDT)
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To: Douglas Anderson <dianders@chromium.org>, Rob Herring
 <robh+dt@kernel.org>, Kees Cook <keescook@chromium.org>
References: <20190507044801.250396-1-dianders@chromium.org>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
Date: Tue, 7 May 2019 10:52:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507044801.250396-1-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_105209_455936_FF1407AB 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 groeck@chromium.org, jwerner@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/6/19 9:48 PM, Douglas Anderson wrote:
> We'll add a dummy to just return false.

A more complete explanation of why this is needed please.

My one guess would be compile testing of arch/sparc/kernel/prom_64.c
fails???

-Frank


> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  include/linux/of.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/linux/of.h b/include/linux/of.h
> index 0cf857012f11..62ae5c1cafa5 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -653,6 +653,11 @@ static inline bool of_have_populated_dt(void)
>  	return false;
>  }
>  
> +static inline bool of_node_is_root(const struct device_node *node)
> +{
> +	return false;
> +}
> +
>  static inline struct device_node *of_get_compatible_child(const struct device_node *parent,
>  					const char *compatible)
>  {
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
