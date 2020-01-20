Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A2C1432E8
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 21:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A7aXNRG9bqpg0RpByxBlmfcYP+wXQdpqSi8BoePfg2A=; b=Xka7TQjWlngJnETMHC3HbkOBi
	V1QseTlWU9W3rvSJGwd1VUE8k8dqoHVyxyGqAJdoQGZewGHQEaDmj5BFIslKDdgwGfJG7UX8UVB2j
	Dx9MqkqFK7rtYWj3BeGBRWPliSBbYI+oSFD4Tvi9SxLqwx0y68d76aULIP8XhxZa1qAQabH/Nf+ME
	EkY7fHTi8bT7pwSQi7fTmGjfmVxM7ErQwRrNVbxxLUhcuk2eexRpIvnME6JO3Ug+8IjWaoy6YrZsz
	A3WY/anF2YBvhRCsrPHkL9oItv73UlNuaviBFIeBh3VlkygMkdftZF9flmkp3Gz5gJZnrkaA5vNcb
	wzIekBVRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itddV-0007m1-OH; Mon, 20 Jan 2020 20:27:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itddR-0007lN-Fr
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 20:26:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id w62so264674pfw.8
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Jan 2020 12:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FWdyCjkkRlET0CCL1DhvvWntKUj56/PIrVm9vvf0nMA=;
 b=mD74kdf9MhMy8IVtNoV/df/QhdAdSUTMqozu2qSBE39ZQsZo4ebgn51mkiX0XR2OKk
 DUh5PFMX8rPmQQbWbBPDlzNZf3HHwH3I0t3epKZchCkwjVOSRDH4DJCfDFKCCnCxU2H/
 xNwv0ntdiCeatKj+1I6+ikOEUI7UUSokjpg0rYrXHsuN2YiQ6T/lRxU02P3XWnvHMpuq
 0RB5HYJj4y7NJKWtTiBr1X6+DvK85DPs766rt6hIBx62WTXPuUCxcWZOzOSsuHiTWBtH
 khbTgqOKIBUlgnt7RCrX+dCJLmSKL4iVstZrt8sOiFaZR9tvW6XX6zxsxcHAcG6iy/MM
 uuEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FWdyCjkkRlET0CCL1DhvvWntKUj56/PIrVm9vvf0nMA=;
 b=rF3omJq+BA6EFPPp/vn2rhzfyolY0WJNVNOfP+yHZY1e89NsnKD9y3YQ7j0F+SXlyO
 v+nO9a7YKmSQAxuQmM7Oji7u/otGT0RXKuuUFIZQBYpebpB5zblVaDG9VjH5KHvRVU/a
 /DoHjogZMv0oXw2hI6e1wFEVlmjFyWk6XY6OeqZ7ZmE5maui1s9KG/T+soa4ldcQ3IeY
 PEBpwFn+9VJ2UptYEBtKMlS3QEyRLR07u9abdhYx60vDMi8FTAYPOx99fg7erI8l/Mw/
 yv2x8wvsY+wYdIDA78p6EWf6zcaRP5TlpnPhv5+vZ1Ct/onvFrs8/7HvJCAKOpMw9mWj
 u8vA==
X-Gm-Message-State: APjAAAWRdgDAIsEMKbXnPstIH2U/NG7h7/PpXjWEavTO4vmTN2pSG7Dz
 3QZ9YT28MDUNvAYz0LiC87HF4UC/
X-Google-Smtp-Source: APXvYqxeRGh9l99/XieO5plm+jgtMgqBf103uW8XSd9mbSEPoPbHjwGu2hAAgCbAhoMOVC8xlYOcGw==
X-Received: by 2002:a63:63c3:: with SMTP id x186mr1516673pgb.294.1579552015414; 
 Mon, 20 Jan 2020 12:26:55 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 u26sm38535808pfn.46.2020.01.20.12.26.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2020 12:26:54 -0800 (PST)
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
To: Markus Reichl <m.reichl@fivetechno.de>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
 <20200120115828.GC32175@kuha.fi.intel.com>
 <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
 <546a5723-a974-ed0a-93e3-b46c919b0f7e@fivetechno.de>
 <2e739a08-191b-d7c9-1273-4000cbbca423@roeck-us.net>
 <d985890e-f1a4-a9b4-8f08-1860ea4486f7@fivetechno.de>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d3c847f7-2c8a-3cc0-00db-f46668fd83ca@roeck-us.net>
Date: Mon, 20 Jan 2020 12:26:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <d985890e-f1a4-a9b4-8f08-1860ea4486f7@fivetechno.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_122657_555402_89080119 
X-CRM114-Status: GOOD (  24.99  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 1/20/20 12:14 PM, Markus Reichl wrote:
> Hi Guenter,
> 
> Am 20.01.20 um 17:04 schrieb Guenter Roeck:
>> On 1/20/20 6:34 AM, Markus Reichl wrote:
>>> Hi Guenter,
>>>
>>> Am 20.01.20 um 15:21 schrieb Guenter Roeck:
>>>> On 1/20/20 3:58 AM, Heikki Krogerus wrote:
>>>>> Hi Markus,
>>>>>
>>>>> On Thu, Jan 09, 2020 at 05:29:07PM +0100, Markus Reichl wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I'm working with a ROC-RK3399-PC arm64 board from firefly, circuit sheet [1].
>>>>>> The board is powered from an USB-C type connector via an FUSB302 PD controller.
>>>>>> With measured 15W+ power consumption it should use higher voltage PD modes than
>>>>>> the standard 5V USB-C mode.
>>>>>>
>>>>>> When I add the related connector node in DTS [2] the FUSB302 initializes
>>>>>> the right PD mode (e.g. 15V/3A).
>>>>>>
>>>>>> But during initialisation the PD is switched off shortly and the board has a blackout.
>>>>>> When I inject a backup supply voltage behind the FUSB302 (e.g. at SYS_12V line) during boot
>>>>>> I can remove the backup after succesfull setting up the PD and the board will run fine.
>>>>>>
>>>>>> Is it possible to change the behaviour of the fusb302 driver to not power down the PD supply
>>>>>> during init?
>>>>>
>>>>> I guess it's also possible that the problem is with tcpm.c instead of
>>>>> fusb302.c. tcpm.c provides the USB PD state matchines. Guenter! Can
>>>>> you take a look at this?
>>>>>
>>>>
>>>> There was always a problem with handoff from the bootloader. tcpm_init() calls
>>>> tcpm_reset_port() which turns vbus and vconn off, which I imagine can
>>>> trigger the situation.
>>>>
>>>> Unfortunately I was never able to solve the puzzle. The Type-C protocol does
>>>> not support any kind of "hand-off" from one component in the system to another.
>>>> If the state machine doesn't start from a clean state, there is pretty
>>>> much no guarantee that it ever synchronizes.
>>>>
>>>> Maybe someone can find a better solution, but when I wrote the code I just
>>>> could not get it to work reliably without resetting everything during
>>>> registration.
>>>>
>>>> Note that v4.4 did not include the upstream tcpm code, suggesting the
>>>> code in the vendor kernel was possibly using a different or backported
>>>> state machine. Impossible to say what was done there without access
>>>> to the code.
>>>
>>> The vendor code for fusb302 is here:
>>> https://github.com/FireflyTeam/kernel/tree/rk3399/firefly/drivers/mfd
>>>
>>
>> AFAICS the vendor code don't reset VBUS, and selectively (only) resets the
>> PD state machine in the fusb302 on startup. The tcpm state machine is embedded
>> in the fusb302 driver, making this easier to control.
>>
>> The fusb302 Linux kernel driver, on the other side, resets the entire fusb302
>> on initialization, not just PD (bit 0 of the reset register). Question is if
>> that can be changed to just reset PD (bit 1 of the reset register).
>> Maybe that would already fix the problem. Can you give it a try ?
>>
>> Guenter
> 
> I tried
> 
> diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
> index ed8655c6af8c..6e15e7b22064 100644
> --- a/drivers/usb/typec/tcpm/fusb302.c
> +++ b/drivers/usb/typec/tcpm/fusb302.c
> @@ -334,11 +334,11 @@ static int fusb302_sw_reset(struct fusb302_chip *chip)
>          int ret = 0;
>   
>          ret = fusb302_i2c_write(chip, FUSB_REG_RESET,
> -                               FUSB_REG_RESET_SW_RESET);
> +                               FUSB_REG_RESET_PD_RESET);
>          if (ret < 0)
> -               fusb302_log(chip, "cannot sw reset the chip, ret=%d", ret);
> +               fusb302_log(chip, "cannot pd reset the chip, ret=%d", ret);
>          else
> -               fusb302_log(chip, "sw reset");
> +               fusb302_log(chip, "pd reset");
>   
>          return ret;
>   }
> 
> but did not help, after mmc and ehci initializing the PD-supply gets switched off at 1.95s.

Next step to try would be to skip vbus initialization - drop tcpm_init_vbus()
from tcpm_reset_port(). Can you do that as well ?

Thanks,
Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
