Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011E22ABA8
	for <lists+linux-rockchip@lfdr.de>; Sun, 26 May 2019 20:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6JackOgLvDWzcx8kPeX7JoeonLAcpDi6MNv67x38+iA=; b=Oub/dgeXU6SkZuIvSGoH2CQ9E
	skTxNkKcD5SDpabJBULuJfIm9y4G713rlCkQy8mps4rq0Kz/NrsRDj7SbudFGwFLKI4vcczUmWXhC
	uCGv+biXz/lg+4UQmAcw6dPx46YUapPhNVM49IiCXzN9Rbxeqyu2/tH+7GrjkaH8K4ZvXXsSiQLxV
	bx9v4+h+yYXJlcUz3JbOx19gxSSyDO8MCzSobSF//MM7PJo09+zijWAnwmZSJT64wFBxtZCp9P4OD
	ki08lEXP+tl+EeRsDdUk3GPGwk2QB70PLuqWUoVDAlkXcnLGgvOgUyMdK3HjVBq/ObvgHrWXFq03k
	Y6Fh2cW6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUy66-0002Wl-2q; Sun, 26 May 2019 18:42:18 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUy63-0002Vq-Bc
 for linux-rockchip@lists.infradead.org; Sun, 26 May 2019 18:42:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id u22so924782pfm.3
 for <linux-rockchip@lists.infradead.org>; Sun, 26 May 2019 11:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=S88EltoJvW0HnJQIXBVSy2Mn8e0LGr9vTiSSOx2clK8=;
 b=Q2NVhLX/V/C/lVZq0EZZ4yDM27WjHpoQiWYfJ5JbHajiOfE0tjIUFcTpddLzwy2chM
 Rfld9gOWwFVBI6u3/F7rgJlW00osHhQcX76bIsTm2iazaZ5ef4rB5Fs5QMMto/OTXldz
 X/BPoE6iqeg9FA1EzlduSMN/AfpYfDQ2iFe3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S88EltoJvW0HnJQIXBVSy2Mn8e0LGr9vTiSSOx2clK8=;
 b=tVw8KX7vk8TAFvtVQoUIXcqsFxD2502J+eJt9q0qRRhwIU4fXbC6DHIXQvH4MPHB/P
 OBUd4K2MOe+VTc64ZpWq4xIkEsL5W73wS/KfIi4d0Lxo28Zwb0R26leuR1VZ/GTEtz1d
 YXNYvEVaX+q8HC/uO+93M0jPya7hkWY2+cWpG8Gqo6cKxuWmrkT0Q7aB2tdfnx7uhAnZ
 lql899Ergp2RbbEQLznm8emKGa/GkDnz+/f3LTttqso4aVVOJoCczAEINoSoYnDKvACA
 QoCsg61vLtVnL+LkAqE6cQnXXP4UXXXeniHTBgQFe9qd70o2OdIOvLcba2ZojvcJacVK
 hHEA==
X-Gm-Message-State: APjAAAUUnkRsVPbp7cEt7fi4DpbaClYqlHHi0mB5bIQEXa3PtL5wMu9W
 Uvx0MUAttMghtd5JarlBGUq4iA==
X-Google-Smtp-Source: APXvYqyaZoSVsYgO0quEjzoc5Ouq76hUjTrOkBjooE0FUyoX8LzowTKQ77/Ey+sNsIzlC0QcF5eeEg==
X-Received: by 2002:a62:e201:: with SMTP id a1mr129348135pfi.67.1558896132915; 
 Sun, 26 May 2019 11:42:12 -0700 (PDT)
Received: from [10.230.40.234] ([192.19.215.250])
 by smtp.gmail.com with ESMTPSA id 124sm9857463pfe.124.2019.05.26.11.42.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 11:42:12 -0700 (PDT)
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <05af228c-139b-2b7f-f626-36fb34634be5@broadcom.com>
Date: Sun, 26 May 2019 20:42:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190517225420.176893-3-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_114215_403987_93CC1CD8 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/18/2019 12:54 AM, Douglas Anderson wrote:
> Normally when the MMC core sees an "-EILSEQ" error returned by a host
> controller then it will trigger a retuning of the card.  This is
> generally a good idea.

Probably a question for Adrian, but how is this retuning scheduled. I 
recall seeing something in mmc_request_done. How about deferring the 
retuning upon a release host or is that too sdio specific.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
