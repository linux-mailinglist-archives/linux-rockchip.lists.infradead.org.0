Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E943420478
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 13:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmDPWuP044LaUV9ewQfoVoDtxkQEYHfB1/MdCDvKlpY=; b=BZrbtQKvpCm+EG
	8cTUzVxmcRkSSrUbj58rbjBM/JHPSRo7X3N1ZwQE+uAr3HbdElu2VYlRoIWf8RydcEGGRpyMQCbjN
	w7ySlEURO5TuteRCDlbeLIf3fumOnIPegWywQVhQWh5nfb1Y4qgQML1ngefddWcPygTlmcC7/iM9x
	/HuDphyLXdtzRlKJJvC4dRRa4iKhiRj1LKy07+nD47QgHN6eVuC6fknlf8lRHyWBGPxAEoZeV+NWo
	C1IgARPBzRuWKZHBMedgRL8vH6Qo1HI8tsM9u/xGGfN68pyt73fDyoHIvauQATTuXIa8p8STKZoWq
	sPxmusJn+SQxZEmQ1/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRERT-0002Lk-JD; Thu, 16 May 2019 11:20:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRERQ-0002LA-E1
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 11:20:53 +0000
Received: by mail-lj1-x244.google.com with SMTP id h11so1381359ljb.2
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 04:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kRLI+MRqPWEOi6+o0bitHVCl86C8o1gF6OGgfhSKZS0=;
 b=fm2+0aieraFIzy3CJAw7U/aHEhKeSvaIaVGCGnbl3r8p0fCdl8xR4qJ7SKMk93a3U+
 Mx05fbk1+mevXVRsvcqJWcyNWwoCkWRS6L8BLaSRBAF8lrSvqqO96bUr0JyKAeHPerbt
 hO2aMUcN91gYzMaAlkG4FmDWEI8Ah1TPy6iLuNKgBEpMlKZ9KNpMIo9cB4Djq0nlttJP
 CMBShp8NJrdTlQSYXGoDXgoRLeXqGS16vveCHBpAtS2YJS458XcUeygNvyJbyzBGRoUP
 4jKyZs0gOHomGQS0cD2nSCZuOty7CtU6jsQNe0hFzixUBmPcgqzNEIP5GPr1Uear26xV
 7pLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kRLI+MRqPWEOi6+o0bitHVCl86C8o1gF6OGgfhSKZS0=;
 b=AyaU+9tULLKlLIQlw1PGT+RwR5ZGqdeexSyKqbTHpX1nWD7xBTJzinE5rhmpIA4oof
 dg8HVmsuutXzjGQGjxtqBm9LEV2mG1YlSjNV6OT3la6qOYih+DUJTohPRhSqFCYsasW3
 IyM4dIWW3uIHL+Oj+tcdS1RTNPeTp+wfoYtwSogJGTzp5LrSB2x1kVSRMXq/Bfj8ILuR
 b6yydRu2O7j0hdQ+hb8GCm2OyofPeFv2euqrY6BoboAtOn0YkPQ+8iflAdPoOO1SC7+h
 D8cArZ7J/9NvDqzGnKle2O/szNFtulVqrceY10yBxBvNXMhThy3qRRSmtK0qk2T2aAO4
 28Zg==
X-Gm-Message-State: APjAAAXWw6/SAV9bM9LVPxHEWWA4E/SN+2U4dV0YVnYSJd54AIPo8r33
 93PWGqaGZN6YihWUqUpnx+0cLiyvmwS5UQ+7r3JqLA==
X-Google-Smtp-Source: APXvYqxoArGUQbAGr63yz6qrvWdCjECvzmeE+zyvkueJJAumhxuqD6UH+z3ce8w6hLlTFJ9RXibf6Pkh8utF9aNv1Wg=
X-Received: by 2002:a2e:301a:: with SMTP id w26mr8654844ljw.153.1558005650599; 
 Thu, 16 May 2019 04:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <1555309442-16039-1-git-send-email-wen.yang99@zte.com.cn>
In-Reply-To: <1555309442-16039-1-git-send-email-wen.yang99@zte.com.cn>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 13:20:39 +0200
Message-ID: <CACRpkdYghGih+oxXwNDMLVZBAd36xJWoJR76JDycycczRPuGHQ@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: rockchip: fix leaked of_node references
To: Wen Yang <wen.yang99@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_042052_471693_3BEEDF68 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wang.yi59@zte.com.cn,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 8:23 AM Wen Yang <wen.yang99@zte.com.cn> wrote:

> The call to of_parse_phandle returns a node pointer with refcount
> incremented thus it must be explicitly decremented after the last
> usage.
>
> Detected by coccinelle with the following warnings:
> ./drivers/pinctrl/pinctrl-rockchip.c:3221:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 3196, but without a corresponding object release within this function.
> ./drivers/pinctrl/pinctrl-rockchip.c:3223:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 3196, but without a corresponding object release within this function.
>
> Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
